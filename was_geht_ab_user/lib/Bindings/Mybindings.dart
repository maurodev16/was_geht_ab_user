import 'package:get/get.dart';
import 'package:was_geht_ab_user/Controllers/HomeController.dart';
import 'package:was_geht_ab_user/IRepositories/IRepositoryHome.dart';
import 'package:was_geht_ab_user/Repositories/RepositoryHome.dart';

class MyBindings implements Bindings {
@override
void dependencies() {
 Get.lazyPut<HomeController>(() => HomeController(Get.find()));
     Get.lazyPut<IRepositoryHome>(() => RepositoryHome());
  }
}