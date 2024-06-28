import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trading_app/Repository/Api/Cripto/cripto_api.dart';
import 'package:trading_app/Repository/Model/usre_login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late Loginmodel loginmodel;
  CriptoApi Loginapi =CriptoApi();
  LoginBloc() : super(LoginInitial()) {
    on<FetchloginEvent>((event, emit)async {
    emit(Loginblocloading());
    
    try {
      loginmodel=await Loginapi.getLogin(event.email,event.password);
      emit(Loginblocloaded());
    } catch (e) {
      print(e);
      emit(Loginblocerror());
    }
    });
  }
}
