import 'package:transferios/models/bank.dart';

mixin BandecMixin {
  BankTypes get bank => BankTypes.bandec;
}

mixin MetroMixin {
  BankTypes get bank => BankTypes.metropolitano;
}

mixin BpaMixin {
  BankTypes get bank => BankTypes.bpa;
}
