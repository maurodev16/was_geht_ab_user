import 'package:get/get.dart';
import 'package:was_geht_ab_user/Models/EstablishmentModel.dart';
import 'package:was_geht_ab_user/Repositories/RepositoryHome.dart';

class HomeController extends GetxController
    with StateMixin<List<EstablishmentModel>> {
      @override
  void onInit() async{
   await getAllEstablishment();
    super.onInit();
  }
  final RepositoryHome _repositoryHome;
  HomeController(this._repositoryHome);
  static HomeController get to => Get.find();
  RxList<EstablishmentModel> establishmentsList = <EstablishmentModel>[].obs;

  ///
  RxBool isLoading = false.obs;
  Future<List<EstablishmentModel>> getAllEstablishment() async {
    isLoading.value = true;
    //try {
      List<EstablishmentModel> response = await _repositoryHome.getAll();
      update([...response]);
      if (response.isNotEmpty) {
        establishmentsList.addAll(response);
        change(establishmentsList, status: RxStatus.success());
      } else if(response.isEmpty){
        change(establishmentsList, status: RxStatus.empty());
           establishmentsList.value = [];
      }
    // } catch (e) {
    //   print('Erro ao buscar estabelecimentos: $e');
    //   change(establishmentsList, status: RxStatus.error("Ocorreu um erro"));

    // } finally {
    //   isLoading.value = false;
    // }
    return establishmentsList;
  }
}
