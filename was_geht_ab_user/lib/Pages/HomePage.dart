import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:was_geht_ab_user/Controllers/HomeController.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: Text('HomePage')),
          body: SafeArea(
            child: ListView.builder(
              itemCount: controller.establishmentsList.length,
              itemBuilder: (context, index) {
                final establishment = controller.establishmentsList[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "${establishment.logoUrl ?? "https://res.cloudinary.com/dhkyslgft/image/upload/v1696606612/assets/splash_logo_farhpc.png"}"),
                            backgroundColor: Colors.grey,
                            radius: 30),
                        title: Text(establishment.localName ?? ""),
                        subtitle: Text("${establishment.cityName}"),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
