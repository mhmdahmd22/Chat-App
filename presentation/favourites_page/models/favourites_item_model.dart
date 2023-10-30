/// This class is used in the [favourites_item_widget] screen.
class FavouritesItemModel {
  FavouritesItemModel({
    this.mercuryfour,
    this.mercuryisthesma,
    this.id,
  }) {
    mercuryfour = mercuryfour ?? "Mercury";
    mercuryisthesma = mercuryisthesma ??
        "Mercury is the smallest planet in the Solar System and the closest to the Sun.";
    id = id ?? "";
  }

  String? mercuryfour;

  String? mercuryisthesma;

  String? id;
}
