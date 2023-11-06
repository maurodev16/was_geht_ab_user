class EstablishmentModel {

  int? id;
  String? name;

  EstablishmentModel({ this.id, this.name });

  EstablishmentModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}