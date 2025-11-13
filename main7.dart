class Tache {
  String description;
  static int nombreTotal = 0;
   Tache(this.description) {
    nombreTotal++;
  }

}
void main() {
  var t1 = Tache("Faire les devoirs");
  var t2 = Tache("Aller au supermarché");
  var t3 = Tache("Faire du sport");
   print("${t1.description}, ${t2.description}, ${t3.description}");

  print("Nombre total de tâches créées : ${Tache.nombreTotal}");
}