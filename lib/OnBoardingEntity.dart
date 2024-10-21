class OnBoardingEntity {
  final String title;
  final String description;
  final String image;

  OnBoardingEntity({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBoardingEntity> _onBoardingData = [
  OnBoardingEntity(
    title: "Order your Wish",
    description: "Order your Wish",
    image: "1dollar.png",
  ),
  OnBoardingEntity(
    title: "Order your Wish2",
    description: "Order your Wish",
    image: "1Euro.png",
  ),
  OnBoardingEntity(
    title: "Order your Wish3",
    description: "Order your Wish",
    image: "1taka.png",
  ),
];
