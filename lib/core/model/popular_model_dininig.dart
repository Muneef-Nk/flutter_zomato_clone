class DiningModelPopular {
  final String name;
  final String foodPlace;
  final String placeNearMe;
  final String distance;
  final String rating;
  final int Price;
  final String image;
  bool isOffer;


  DiningModelPopular(
      {required this.name,
        required this.isOffer,
      required this.image,
      required this.foodPlace,
      required this.placeNearMe,
      required this.distance,
      required this.rating,
      required this.Price});
}

List<DiningModelPopular> diningModelPopular = [
  DiningModelPopular(
    isOffer: false,
      name: "Grand Entree",
      image: "https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      foodPlace: "foodPlace",
      placeNearMe: "South Indian • Chines • fast food",
      distance: "1.3",
      rating: "3.2",
      Price: 440
  ),

  DiningModelPopular(
      isOffer: true,
      name: "Paragon",
      image: "https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      foodPlace: "South Indian • Chines • fast food",
      placeNearMe: "kakkanad, kochi",
      distance: "1.3",
      rating: "4.5",
      Price: 600
  ),
  DiningModelPopular(
      isOffer: true,
      name: "Paragon",
      image: "https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      foodPlace: "South Indian • Chines • fast food",
      placeNearMe: "palarivattam, kochi",
      distance: "3.3",
      rating: "4.5",
      Price: 660
  ),

];
