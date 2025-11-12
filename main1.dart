class Couleur {
  final int r;
  final int g;
  final int b;

  Couleur(this.r, this.g, this.b);

  Couleur.rouge() : r = 255, g = 0, b = 0;
  Couleur.vert() : r = 0, g = 255, b = 0;
  Couleur.bleu() : r = 0, g = 0, b = 255;

  void afficherCouleur() {
    print('(R: $r, V: $g, B: $b)');
 }
}
void main() {

  var rouge = Couleur.rouge();
  var vert = Couleur.vert();
  var bleu = Couleur.bleu();
  rouge.afficherCouleur(); // (R: 255, V: 0, B: 0)
  vert.afficherCouleur();   // (R: 0, V: 255, B: 0)
  bleu.afficherCouleur();   // (R: 0, V: 0, B: 255)
}
