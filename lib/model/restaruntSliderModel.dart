class RestaurantsSliderModel {
  final String title;
  final String subtitle;
  final String icon;

  RestaurantsSliderModel(
      {required this.title, required this.subtitle, required this.icon});
}

List<RestaurantsSliderModel> restaurantsSliderModel = [
  RestaurantsSliderModel(
      title: "Free Delivery", subtitle: "exclusively for you", icon: "assets/images/delivery.png"),
  RestaurantsSliderModel(
      title: "Up to ₹150 CRED cashback", subtitle: "Use code CRED JACKPOT | above ₹199", icon: "assets/images/offer.png"),
  RestaurantsSliderModel(
      title: "50% OFF up to ₹100", subtitle: "Use code MUNCH50 | above ₹159", icon: "assets/images/offer.png"),
  RestaurantsSliderModel(
      title: "10% OFF up to ₹150", subtitle: "Use code DIGISMART to avail this offer", icon: "assets/images/offer.png"),
];
