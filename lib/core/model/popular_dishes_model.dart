

class PopularDishesModel{
  final String image;
  final String title;
  final String subTitle;

  PopularDishesModel({required this.image, required this.title, required this.subTitle});

}
List<PopularDishesModel> popularDishesModel=[
  PopularDishesModel(image: "https://w7.pngwing.com/pngs/972/300/png-transparent-paratha-thumbnail.png", title: "Paratha", subTitle: "dish"),
  PopularDishesModel(image: "https://w7.pngwing.com/pngs/755/1005/png-transparent-church-s-chicken-fried-chicken-wrap-hot-chicken-crispy-food-recipe-chicken-meat-thumbnail.png", title: "chicken", subTitle: "dish"),
  PopularDishesModel(image: "https://w7.pngwing.com/pngs/918/902/png-transparent-tandoori-chicken-recipe-garnish-food-tandoori-chicken-chicken-cuisine-indian-cuisine-thumbnail.png", title: "Tandoori", subTitle: "dish"),
  PopularDishesModel(image: "https://w7.pngwing.com/pngs/988/787/png-transparent-gulai-mutton-curry-indian-cuisine-malabar-matthi-curry-vegetarian-cuisine-cooking-soup-food-recipe-thumbnail.png", title: "Curries", subTitle: "dish"),

];