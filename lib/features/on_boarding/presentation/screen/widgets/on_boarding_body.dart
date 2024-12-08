import 'package:flutter/material.dart';
import 'package:greenify_app/core/routes/routes.dart';
import 'package:greenify_app/features/on_boarding/data/onboarding_model.dart';
import 'package:greenify_app/features/on_boarding/presentation/screen/widgets/dots_indicator.dart';
import 'package:greenify_app/features/on_boarding/presentation/screen/widgets/onboarding_page.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _goToNextPage() {
    if (_currentIndex < onboardingPages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: onboardingPages.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            final page = onboardingPages[index];
            return OnboardingPage(
              image: page.image,
              title: page.title,
              description: page.description,
              isLastPage: index == onboardingPages.length - 1,
              onNext: _goToNextPage,
              onButtonPressed: index == onboardingPages.length - 1
                   ? () {
                       Navigator.pushNamed(context, Routes.registerScreen);
                    }
                  : null,
            );
          },
        ),
        DotsIndicator(
          currentIndex: _currentIndex,
          totalDots: onboardingPages.length,
        ),
      ],
    );
  }
}
