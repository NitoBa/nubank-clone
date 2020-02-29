import 'package:mobx/mobx.dart';
import 'package:nubank/models/api-model.dart';
import 'package:nubank/src/service.dart';
part 'service-controller.g.dart';

class ServiceController = _ServiceControllerBase with _$ServiceController;

abstract class _ServiceControllerBase with Store {

  final _service = MyService();

  static Map<String, dynamic> getData;
  //var user = ApiModel.fromJson(getData);

  @observable
  int userId = 0;
  @observable
  int id = 0;
  @observable
  String title = '';
  @observable
  bool completed = false;

  @action
  chamadaRequisicao() async{
      getData = await _service.minhaRequisicao();
      var user = ApiModel.fromJson(getData);
      userId = user.userId ?? '';
      id = user.id ?? '';
      title = user.title ?? '';
      completed = user.completed ?? '';
      //teste = getData["results"]["currencies"]["EUR"]['buy'];
      print(user.id);
  }
 
}