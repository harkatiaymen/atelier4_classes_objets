

abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}
abstract class ServeurAPI implements Connectable{
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

