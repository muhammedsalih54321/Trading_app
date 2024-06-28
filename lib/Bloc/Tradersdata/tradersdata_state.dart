part of 'tradersdata_bloc.dart';

@immutable
sealed class TradersdataState {}

final class TradersdataInitial extends TradersdataState {}
class Tradersblocloaded extends TradersdataState {}
class Tradersblocloading extends TradersdataState {}
class Tradersblocerror extends TradersdataState {}
