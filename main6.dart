

abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}
 class ServeurAPI implements Connectable{
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }
  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");

  }
  

}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Utilisateur $utilisateur connecté à la base.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion de la base réussie.");
  }
}
void main() {
  var serveur = ServeurAPI();   // classe concrète
  var bdd = BaseDeDonnees();    // classe concrète

  List<Connectable> services = [serveur, bdd];  // ok, type abstrait mais instances concrètes

  for (var service in services) {
    service.connecter("Aymen");
    service.deconnecter();
  }
}

