import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hawyaty/modules/shared/most/viewer/lo_viewer/presentation/cubit/lo_viewer_cubit.dart';

class ViewerWidgetBuilder extends StatelessWidget {
  InAppWebViewController? webViewController;

  ViewerWidgetBuilder({super.key, this.webViewController});

  @override
  Widget build(BuildContext context) {
    // late InAppWebViewController _webViewController;

    return BlocConsumer<LoViewerCubit, LoViewerState>(
      listener: (context, state) {},
      buildWhen: (previous, current) {
        var success = current is ViewerLoaded;

        return success;
      },
      builder: (context, state) {
        var cubit = context.read<LoViewerCubit>();
        if (state is ViewerLoaded) {
          return InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri.uri(Uri.dataFromString(generatePortraitLayout(state.dataSource),
                    mimeType: 'text/html', encoding: Encoding.getByName('utf-8')))),
            onWebViewCreated: (InAppWebViewController controller) {
              InAppWebViewController.clearAllCache();
              webViewController = controller;
              controller.reload();
            },
            initialSettings: InAppWebViewSettings(
                isInspectable: true,
                disableDefaultErrorPage: true,
                useHybridComposition: true,
                mediaPlaybackRequiresUserGesture: false,
                horizontalScrollBarEnabled: false,
                verticalScrollBarEnabled: false,
                clearCache: true,
                cacheEnabled: false,
                transparentBackground: true),
            onLoadStop: (controller, url) async {
              cubit.onLoadStop();
            },
            onConsoleMessage: (controller, consoleMessage) {
              // Object Send from MCQ Url Starts With "totalDegree" While others Sends Object Starts with "code"
              if (consoleMessage.message.contains("close")) {
                // {"close" : "closed"}
                Navigator.of(context).pop();
              }
              if (consoleMessage.message.startsWith('{"code":') ||
                  consoleMessage.message.startsWith('{"totalDegree":') ||
                  consoleMessage.message.startsWith('{"studentDegree":')) {
                Map<String, dynamic> paredJson = jsonDecode(consoleMessage.message);
                //print(jsonDecode);
                try {
                  cubit.sendValueToLauncherPage(jsonDecode(consoleMessage.message.toString()));
                } catch (e) {}
              }
            },
            shouldAllowDeprecatedTLS:
                (InAppWebViewController controller, URLAuthenticationChallenge challenge) async {
              return ShouldAllowDeprecatedTLSAction.ALLOW;
            },
            onReceivedServerTrustAuthRequest:
                (InAppWebViewController controller, URLAuthenticationChallenge challenge) async {
              return ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED);
            },
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  Future<void> leaveAndClose(BuildContext context) async {}

  String generatePortraitLayout(String gameObjectUrl) {
    return """
    <!DOCTYPE html>
     <html lang="en">
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body {
            // width: 100vw;
            // height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            background-color: white;
            background-image: url(./preloader.gif);
            background-repeat: no-repeat;
            background-position: center center;
        }
        iframe {
            width: 100vw;
            height: 100vh;
            background: transparent;
        }
    </style>
</head>

<body>
      <iframe id="myFrame"  src="$gameObjectUrl" frameborder="0"></iframe>
      
      <script>
      
        var iframeEl = document.getElementById('myFrame');
        

        function bindEvent(element, eventName, eventHandler) {
            if (element.addEventListener) {
                element.addEventListener(eventName, eventHandler, false);
            } else if (element.attachEvent) {
                element.attachEvent('on' + eventName, eventHandler);
            }
        }

        
        // window.addEventListener("notifyGameMap", (event) => {
        //           //alert("notifyGameMap");
        //           console.log(event);
        //           console.log(event.detail);
        //           console.log(JSON.stringify(event));
        //           iframeEl.contentWindow.postMessage({event.detail}, '*');
        //       });
        
        window.addEventListener("notifyGameMap", (event) => {
                  
                  iframeEl.contentWindow.postMessage(event.detail, '*');
              });
        
        bindEvent(window, 'message', function (e) {                 
            console.log(JSON.stringify(e.data));
        });

      </script>
    </body>
   </html>
    """;
  }
}
