class Livre {
  String titre;
  String auteur;
  int _pages = 200; 
  static int totalLivres = 0; 

  Livre(this.titre, this.auteur) {
    totalLivres++;
   }
    int get pages => _pages;
    void afficherInfos() {
       print("Titre: $titre, Auteur: $auteur, Pages: $_pages");
    }
    static void afficherTotalLivres() {
      print("Nombre total de livres créés : $totalLivres");
    }
  }
