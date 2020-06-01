import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CreditCardState extends Equatable {
  double x = 0.0;
  double y = 0.0;
  double scale = 1.0;

  CreditCardState();

  @override
  List<dynamic> get props => [x,y,scale];
}

class FocusingOverview extends CreditCardState {
  final double x = 0.0;
  final double y = 0.0;
  final double scale = 1;

  FocusingOverview() {
    super.x = x;
    super.y = y;
    super.scale = scale;
  }

  @override
  List<Object> get props => [x, y];
}

class FocusingCardNumber extends CreditCardState {
  final double x = 70.0;
  final double y = 00.0;
  final double scale = 1.8;

  FocusingCardNumber() {
    super.x = x;
    super.y = y;
    super.scale = scale;
  }

  @override
  List<Object> get props => [x, y];
}

class FocusingSecurityCode extends CreditCardState {
  final double x = 0.0;
  final double y = 0.0;
  final double scale = 1.0;

  FocusingSecurityCode() {
    super.x = x;
    super.y = y;
    super.scale = scale;
  }

  @override
  List<Object> get props => [x, y];
}

class FocusingCardholderName extends CreditCardState {
  final double x = 150.0;
  final double y = -128.0;
  final double scale = 2.0;

  FocusingCardholderName() {
    super.x = x;
    super.y = y;
    super.scale = scale;
  }

  @override
  List<Object> get props => [x, y];
}

class FocusingExpirationDate extends CreditCardState {
  final double x = -180.0;
  final double y = 100.0;
  final double scale = 2.0;

  FocusingExpirationDate() {
    super.x = x;
    super.y = y;
    super.scale = scale;
  }

  @override
  List<Object> get props => [x, y];
}
