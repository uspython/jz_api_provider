/*
 * @Author: jeffzhao
 * @Date: 2019-04-01 13:14:35
 * @Last Modified by: jeffzhao
 * @Last Modified time: 2019-04-01 17:07:37
 * Copyright Zhaojianfei. All rights reserved.
 */

abstract class ApiProviderInterface {
  void Function(String) get onGotToken => _onGotToken;
  void Function(String) _onGotToken;
  void Function() get onLogout => _onLogout;
  void Function() _onLogout;
  void Function() get onLogin => _onLogin;
  void Function() _onLogin;
}
