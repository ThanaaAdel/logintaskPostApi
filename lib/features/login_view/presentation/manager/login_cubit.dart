import 'package:bloc/bloc.dart';
import 'package:logintaskpostapi/features/login_view/data/model/login_model.dart';
import 'package:meta/meta.dart';
import '../../data/data_source/post_data_api.dart';
import '../../data/model/data.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.postDataServices) : super(LoginInitial());
  final PostDataServices postDataServices;
  Future<void> getAllData({required user_pass, required card_num}) async {
    LoginModel data;
    data = await postDataServices.postData(
        card_num: card_num, user_pass: user_pass);
    if(data.status == 200)
      {
        emit(FeaturedRepositorySuccess(data.data!));
      }
    else {
      emit(FeaturedRepositoryFailure(data.message!));

    }
  }
  }

