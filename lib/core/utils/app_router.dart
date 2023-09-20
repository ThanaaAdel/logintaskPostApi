import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logintaskpostapi/features/login_view/presentation/manager/login_cubit.dart';
import 'package:logintaskpostapi/features/login_view/presentation/widgets/show_data.dart';
import '../../features/login_view/data/data_source/post_data_api.dart';
import '../../features/login_view/presentation/login_view.dart';
abstract class AppRouter {

  static const kLogInView = '/loginView';
  static const kShowData = '/showDataView';

  static final router = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider<LoginCubit>(
            create: (context) => LoginCubit(PostDataServices()),
            child: const LoginView()),
      ),
      // GoRoute(
      //   path: kShowData,
      //   builder: (context, state) =>  ShowData(name: '',),
      // ),

    ],
  );
}
