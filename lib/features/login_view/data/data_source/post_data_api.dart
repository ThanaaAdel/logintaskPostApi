
import 'package:logintaskpostapi/features/login_view/data/model/login_model.dart';
import '../../../../core/utils/api_service.dart';
class PostDataServices {
  Future<LoginModel> postData({required user_pass, required card_num}) async {
    Map<String,dynamic> data = await ApiService().post(
        uri: 'https://alatheer.site/abnaa/Api/login_app',
        body: {
          'card_num':card_num,
          'user_pass':user_pass,});
    print('the data from data services : $data');
    return  LoginModel.fromJson(data);


  }
}
