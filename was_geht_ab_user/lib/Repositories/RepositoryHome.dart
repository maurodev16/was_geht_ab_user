import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:was_geht_ab_user/IRepositories/IRepositoryHome.dart';
import '../Models/EstablishmentModel.dart';

class RepositoryHome extends GetConnect implements IRepositoryHome {
  @override
  void onInit() {
    httpClient.baseUrl = dotenv.env['API_URL'];
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['Accept'] = 'application/json';
      return request;
    });
    super.onInit();
  }

  @override
  Future<List<EstablishmentModel>> getAll()async {
    //try {
      final response = await httpClient.get('establishment/fetch');
      if (response.status.isOk) {
        var jsonResponse = await response.body;
        List<dynamic> postList = jsonResponse;
        return postList
            .map<EstablishmentModel>(
                (item) => EstablishmentModel.fromJson(item))
            .toList();
      }

      if (response.status.hasError) {
        return [];
      }
      if (response.status.isNotFound) {
        return [];
      }
      if (response.status.connectionError) {
        return [];
      }
      print("Body FEcth all Posts Response:::::::::::::${response.bodyString}");

      throw Exception(response.bodyString);
    // } catch (e) {
    //   throw Exception(e.toString());
    // }
  }

  @override
  Future<void> deleteEstablishment(String id) {
    throw UnimplementedError();
  }

  @override
  Future<EstablishmentModel> editEstablishment(EstablishmentModel tblPosts) {
    throw UnimplementedError();
  }

  @override
  Future<List<EstablishmentModel>> fetchEstablishmentsByCityId(String cityId) {
    throw UnimplementedError();
  }

  @override
  Future<void> getEstablishmentById(String id) {
    throw UnimplementedError();
  }
}
