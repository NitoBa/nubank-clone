// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relogio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RelogioController on _RelogioControllerBase, Store {
  final _$segundosAtom = Atom(name: '_RelogioControllerBase.segundos');

  @override
  int get segundos {
    _$segundosAtom.context.enforceReadPolicy(_$segundosAtom);
    _$segundosAtom.reportObserved();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.context.conditionallyRunInAction(() {
      super.segundos = value;
      _$segundosAtom.reportChanged();
    }, _$segundosAtom, name: '${_$segundosAtom.name}_set');
  }

  final _$_RelogioControllerBaseActionController =
      ActionController(name: '_RelogioControllerBase');

  @override
  dynamic changeHours() {
    final _$actionInfo = _$_RelogioControllerBaseActionController.startAction();
    try {
      return super.changeHours();
    } finally {
      _$_RelogioControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
