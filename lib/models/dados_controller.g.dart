// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataController on _DadosControllerBase, Store {
  final _$titleAtom = Atom(name: '_DadosControllerBase.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$indexAtom = Atom(name: '_DadosControllerBase.index');

  @override
  int get index {
    _$indexAtom.context.enforceReadPolicy(_$indexAtom);
    _$indexAtom.reportObserved();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.context.conditionallyRunInAction(() {
      super.index = value;
      _$indexAtom.reportChanged();
    }, _$indexAtom, name: '${_$indexAtom.name}_set');
  }

  final _$_DadosControllerBaseActionController =
      ActionController(name: '_DadosControllerBase');

  @override
  dynamic changetitle() {
    final _$actionInfo = _$_DadosControllerBaseActionController.startAction();
    try {
      return super.changetitle();
    } finally {
      _$_DadosControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
