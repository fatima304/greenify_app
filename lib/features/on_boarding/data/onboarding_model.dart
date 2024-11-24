import 'package:greenify_app/core/helper/app_images.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnboardingModel> onboardingPages = [
  OnboardingModel(
    image: AppImages.onBoarding1,
    title: 'Find\nAyurvedic\nHerbs',
    description:
        'You can search herbs by local names,\nScientific names, English names, Family\nnames, or search by image',
  ),
  OnboardingModel(
    image: AppImages.onBoarding2,
    title: 'Ask For help',
    description:
        'Are you wandering around to find your\nplant disease? The app has a friendly\ncommunity. You can ask for help',
  ),
  OnboardingModel(
    image: AppImages.onBoarding3,
    title: 'Learn About The\ntypes Of Soil',
    description:
        'Are you ready to learn more about the\nsoil? We can help others learn more\nabout them and their advantages and\nplant diseases and their treatment.',
  ),
];
