import 'package:dating/controller/login_controller.dart';
import 'package:dating/controller/setting_password_controller.dart';
import 'package:dating/controller/user_controller.dart';
import 'package:dating/data/repository/heart_repository.dart';
import 'package:dating/data/service/heart_service.dart';
import 'package:dating/data/service/auth_service.dart';
import 'package:dating/data/repository/user_repository.dart';
import 'package:dating/utils/api_urls.dart';
import 'package:dating/utils/dio_intercepter.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(authService: AuthService()));
    Get.put(
        UserController(
          userRepository: UserRepositoryImpl(
              dio: Dio(BaseOptions(baseUrl: ApiUrl.baseUrl))
                ..interceptors.add(AuthInterceptor())
                ..interceptors.add(BaseIntercepter())),
          heartService: HeartService(heartRepository: HeartRepository()),
        ),
        permanent: true);
  }
}
