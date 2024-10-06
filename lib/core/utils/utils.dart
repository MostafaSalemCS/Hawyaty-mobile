import 'package:flutter/material.dart';

enum MyDeviceType { phone, tablet }

class Utils {
  static MyDeviceType getDeviceType() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 481
        ? MyDeviceType.phone
        : MyDeviceType.tablet;
    // return data.size.shortestSide < 550 ? DeviceType.Phone : DeviceType.Tablet;
  }
}