import 'package:hawyaty/modules/shared/partial/presentation/domain/entity/app_user_entity.dart';
import 'package:rxdart/subjects.dart';

class UserAccountManager {
  AppUserEntity _userEntity = AppUserEntity.empty();

  final _userAccountSubject = BehaviorSubject<AppUserEntity>();

  Sink<AppUserEntity> get inUserAccount => _userAccountSubject.sink;
  Stream<AppUserEntity> get outUserAccount$ => _userAccountSubject.stream;
  AppUserEntity get getUserAccount => _userEntity;

  void updateUserAccount(AppUserEntity userEntity) {
    _userEntity = userEntity;
    inUserAccount.add(userEntity);
  }
}