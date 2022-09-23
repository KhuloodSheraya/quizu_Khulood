import 'package:get/get.dart';
import 'package:quizu_khulood/routes/app_route.dart';

class LoginController extends GetxController {

  var isLoading = false.obs;

  Future<dynamic> getProfileData(_mobile) async {
    try {
      isLoading.value = true;
      Get.toNamed(Routes.LOGIN_OTP);
   

      // var data = {'mobile': mobile};
      // String url = GblFn.baseUrl + 'get_pt_data_by_mobile';
      // var res = await DioClient.dio().post(url, data: data);
      // print("==> " + res.data.toString());

      // if (res.data.toString() == 'error') {
      //   GblFn.showMsg(appTrans.transErrorCannotProcess());
      // } else {
      //   storage.write('trail', '1');
      //   storage.write('profile_data', res.data.toString());
      //   Get.offNamed(Routes.DASHBOARD);
      // }
    } catch (e) {
      print("==> " + e.toString());
    //  GblFn.showSnackbar(mainLang.transNetwork(), mainLang.transNoInternet());
    } finally {
      isLoading.value = false;
    }
  }



   Future<dynamic> login(_mobile) async {
    try {
      isLoading.value = true;
      Get.toNamed(Routes.SIGNUP);
   

      // var data = {'mobile': mobile};
      // String url = GblFn.baseUrl + 'get_pt_data_by_mobile';
      // var res = await DioClient.dio().post(url, data: data);
      // print("==> " + res.data.toString());

      // if (res.data.toString() == 'error') {
      //   GblFn.showMsg(appTrans.transErrorCannotProcess());
      // } else {
      //   storage.write('trail', '1');
      //   storage.write('profile_data', res.data.toString());
      //   Get.offNamed(Routes.DASHBOARD);
      // }
    } catch (e) {
      print("==> " + e.toString());
    //  GblFn.showSnackbar(mainLang.transNetwork(), mainLang.transNoInternet());
    } finally {
      isLoading.value = false;
    }
  }



}
