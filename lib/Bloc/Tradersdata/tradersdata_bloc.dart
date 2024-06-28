import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trading_app/Repository/Api/Cripto/cripto_api.dart';
import 'package:trading_app/Repository/Model/traders_data.dart';

part 'tradersdata_event.dart';
part 'tradersdata_state.dart';

class TradersdataBloc extends Bloc<TradersdataEvent, TradersdataState> {
  late List<Tradersdatamodel> tradersdatamodel;
  CriptoApi tradersdataapi =CriptoApi();
  TradersdataBloc() : super(TradersdataInitial()) {
    on<Fetchtradersdata>((event, emit)async {
 emit(Tradersblocloading());
 try {
   tradersdatamodel= await tradersdataapi.getTradersdata();
   emit(Tradersblocloaded());
 } catch (e) {
   print(e);
   emit(Tradersblocerror());
 }
    });
  }
}
