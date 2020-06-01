import 'package:bloc/bloc.dart';

import 'credit_card_event.dart';
import 'credit_card_state.dart';

class CreditCardBloc extends Bloc<CreditCardEvent, CreditCardState> {
  @override
  CreditCardState get initialState => FocusingOverview();
  @override
  Stream<CreditCardState> mapEventToState(
    CreditCardEvent event,
  ) async* {
    if (event is CardNumberFocus) {
      yield FocusingCardNumber();
    }
    if (event is CardholderNameFocus) {
      yield FocusingCardholderName();
    }
    if (event is SecurityCodeFocus) {
      yield FocusingSecurityCode();
    }
    if (event is ExpirationDateFocus) {
      yield FocusingExpirationDate();
    }
    if (event is OverviewFocus) {
      yield FocusingOverview();
    }
  }
}
