

import 'package:mobx/mobx.dart';
part 'relogio_controller.g.dart';

class RelogioController = _RelogioControllerBase with _$RelogioController;

abstract class _RelogioControllerBase with Store {
  @observable
  int segundos = 0;

  @action
  changeHours(){
    print("ok");
  }
}