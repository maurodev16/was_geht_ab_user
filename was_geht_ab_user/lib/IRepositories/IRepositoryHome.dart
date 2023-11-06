
import '../Models/EstablishmentModel.dart';

abstract  class IRepositoryHome {

  Future<List<EstablishmentModel>> getAll();
  Future<List<EstablishmentModel>> fetchEstablishmentsByCityId(String cityId);
  Future<void> getEstablishmentById(String id);
  Future<void> deleteEstablishment(String id);
  Future<EstablishmentModel> editEstablishment(EstablishmentModel tblPosts);

}