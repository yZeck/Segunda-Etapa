import'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_contoller.dart';

class HomePage extends StatelessWidget {
 var controller = HomeController();
 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: ListView.separated(
        itemCount: controller.tabela.length,
        itemBuilder: (BuildContext contexto, int i){
          final tabela =  controller.tabela;
          return ListTile(
            leading: Image.network(tabela[1].brasao),
            title: Text(tabela[1].nome),
            trailing: Text(
              tabela[1].pontos.toString(),
            ),
          );
        },
        separatorBuilder: (_,__) => Divider(),
        padding: EdgeInsets.all(16),
      ),
      );
  }
}