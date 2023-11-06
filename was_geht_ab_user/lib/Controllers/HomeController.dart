import 'package:get/get.dart';
import 'package:was_geht_ab_user/Models/EstablishmentModel.dart';
import 'package:was_geht_ab_user/Repositories/RepositoryHome.dart';

class HomeController extends GetxController with StateMixin<List<EstablishmentModel>> {
  final RepositoryHome _repositoryHome;
  HomeController(this._repositoryHome);
  static HomeController get to => Get.find();

///
RxBool isLoading = false.obs;
  Future<EstablishmentModel> getAllEstablishment()async{
    isLoading.value = true;
    try {
      EstablishmentModel response = await _repositoryHome.getAll();
    } catch (e) {
      
    }
  }


}
