



import '../network/network_service.dart';
import '../utils/services/get_storage_service.dart';

class Repository {
  final NetworkService networkService;

  Repository(this.networkService);

  Future<bool> isLoggedIn() async {
    return getStorage().getLoggedIn();
  }

  Future<dynamic> doLogin(String mobileNo) async {
    return networkService.doLogin(mobileNo);
  }

  Future<bool> saveUserData(
      String agentId,
      String amBit,
      String userNameString,
      String userToken,
      ) async {
    getStorage().setAgentId(agentId);
    getStorage().setUserToken(userToken);
    getStorage().setUsername(userNameString);
    getStorage().setLoggedIn(true);
    getStorage().setAmBit(amBit);

    return true;
  }

}
