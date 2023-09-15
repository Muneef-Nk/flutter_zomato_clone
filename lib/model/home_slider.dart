

class SliderHome{
  final String hotelName;
  final String rating;
  final String item;
  final String amount;
  final String time;
  final String cate;
  final String km;
  final List slider;
  final String offer;
  final bool offerStatus;

  SliderHome({required this.offerStatus, this.offer="", required this.item, required this.amount, required this.time, required this.km, required this.hotelName, required this.rating, required this.slider, required this.cate});
}

List<SliderHome> sliderHome=[
  SliderHome(
      hotelName: "Roots Restaurant",
      rating: "4.6",
      item: "Shawarma",
      amount: "120",
      cate: "fast Food",
      time: "20-30 min",
      offerStatus: false,
      km: "6 km",
      slider: [
        "https://images.unsplash.com/photo-1642783944285-b33b18ef6c3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2hhd2FybWElMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1644615988562-31d2e98fb6b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHNoYXdhcm1hJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1583665354191-634609954d54?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHNoYXdhcm1hJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1662116765994-1e4200c43589?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHNoYXdhcm1hfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60"
      ]
  ),
  SliderHome(
      hotelName: "Qahwa Restaurant",
      rating: "4.8",
      item: "Fried chiken",
      cate: "fast Food",
      km: "4 km",
      amount: "300",
      offerStatus: true,
      offer: "30% OFF up to ₹75",
      time: "45-50 min",
      slider: [
        "https://images.unsplash.com/photo-1580217593608-61931cefc821?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2hpY2tlbiUyMGZyeXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1623653387945-2fd25214f8fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNoaWNrZW4lMjBmcnl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        "https://plus.unsplash.com/premium_photo-1683657860084-5f9723dcac0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGNoaWNrZW4lMjBmcnl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
      ]
  ),

  SliderHome(
      hotelName: "Chicking",
      item: "Burger",
      time: "10-30 min",
      cate: "fast Food",
      offerStatus: false,
      amount: "230",
      km: "4 km",
      rating: "4.0",
      slider: [
        "https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YnVyZ2VyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1610440042657-612c34d95e9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://plus.unsplash.com/premium_photo-1683619761468-b06992704398?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJ1cmdlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"
      ]
  )
];