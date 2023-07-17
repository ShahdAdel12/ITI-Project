part of 'tdl_cubit.dart';

@immutable
abstract class TdlState {}

class TdlInitial extends TdlState {}


class TdlLoading extends TdlState {}

class TdlSuccess extends TdlState {}

class TdlError extends TdlState {}


