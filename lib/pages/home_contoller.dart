
import 'package:flutter_application_1/models/time.dart';

class HomeController{

late List<Time> tabela;

  HomeController() {
      tabela = [
    Time(
      brasao: 'Flu',
       nome: 'Flamengo',
        pontos: 80,
        ),
    ];
  }
}