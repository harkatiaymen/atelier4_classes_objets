class Compte {
  double _solde;
  final String numeroCompte;
  Compte(this.numeroCompte, [this._solde = 0.0]);
  String get solde => "${_solde.toStringAsFixed(2)} \$";
}