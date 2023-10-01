class DiningRestoModel {
  final String name;
  final String km;
  final String price;
  final String foodIiem;
  final String place;
  final List<String> slider;

  DiningRestoModel({required this.slider,
      required this.name,
      required this.km,
      required this.price,
      required this.foodIiem,
      required this.place});
}

List<DiningRestoModel> diningRestoModel = [
  DiningRestoModel(
      name: "East India Street Cafe",
      km: "5.8",
      price: "240",
      foodIiem: "European",
      slider: [
        "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1981&q=80",
        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"
      ],
      place: "panampilly nagar",
  ),

  DiningRestoModel(
    name: "Kochi Art Cafe",
    km: "3.8",
    price: "780",
    foodIiem: "Salad",
    slider: [
      "https://plus.unsplash.com/premium_photo-1676106623769-539ecc6d7f92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
      "https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
      "https://images.unsplash.com/photo-1529042410759-befb1204b468?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1886&q=80"
    ],
    place: "Fort Kochi",
  ),
];
