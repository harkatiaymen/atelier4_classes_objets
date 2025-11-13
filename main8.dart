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
  class Roman extends Livre {
     String genre;
      Roman(String titre, String auteur, this.genre) : super(titre, auteur);

      @override
      void afficherInfos() {
        print("Titre: $titre, Auteur: $auteur, Genre: $genre, Pages: $pages");
      }

  }
  void main() {

   var livre1 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");
   var livre2 = Livre("1984", "George Orwell");
   var roman1 = Roman("Sherlock Holmes", "Arthur Conan Doyle", "Policier");

   livre1.afficherInfos();
   livre2.afficherInfos();
   roman1.afficherInfos();
   Livre.afficherTotalLivres();
  }
