class RestaurentRecommeded {
  final int rating;
  final int price;
  final String itemName;
  final String description;
  final bool veg;
  final bool isBestSeller;
  final String image;

  RestaurentRecommeded(
      {required this.rating,
      required this.price,
      required this.itemName,
      required this.description,
      required this.veg,
      required this.isBestSeller,
      required this.image});
}

List<RestaurentRecommeded> restaurentRecommeded = [
  RestaurentRecommeded(
      rating: 430,
      price: 450,
      itemName: "Jimmy Willy Pizza",
      description: "Grilled chicken cube Green pepper, onion, tomatoes and olive",
      veg: true,
      isBestSeller: true,
      image: "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"
  ),
  RestaurentRecommeded(
      rating: 540,
      price: 290,
      itemName: "Jimmy Willy Pizza",
      description: "Grilled chicken cube Green pepper, onion, tomatoes and olive",
      veg: false,
      isBestSeller: true,
      image: "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"
  ),
  RestaurentRecommeded(
      rating: 770,
      price: 860,
      itemName: "Jimmy Willy Pizza",
      description: "Grilled chicken cube Green pepper, onion, tomatoes and olive",
      veg: true,
      isBestSeller: false,
      image: "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"
  ),
];
