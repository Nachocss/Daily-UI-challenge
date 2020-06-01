import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class CreditCardEvent extends Equatable {
  const CreditCardEvent();
}


class OverviewFocus extends CreditCardEvent {
  const OverviewFocus();

  @override
  List<Object> get props => [];
}

class CardNumberFocus extends CreditCardEvent {
  const CardNumberFocus();

  @override
  List<Object> get props => [];
}

class SecurityCodeFocus extends CreditCardEvent {
  const SecurityCodeFocus();

  @override
  List<Object> get props => [];
}

class CardholderNameFocus extends CreditCardEvent {
  const CardholderNameFocus();

  @override
  List<Object> get props => [];
}

class ExpirationDateFocus extends CreditCardEvent {
  const ExpirationDateFocus();

  @override
  List<Object> get props => [];
}
