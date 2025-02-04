import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskline/shared/ui/button.dart';
import 'package:taskline/shared/ui/divided_stepper.dart';
import 'package:taskline/shared/ui/icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                  child: Text(
                    'Продолжить',
                    style: TextStyle(
                        color: theme.colorScheme.onPrimary, fontSize: 18),
                  ),
                  onPressed: () {}),
              AppIconButton(
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/close.svg')),
              StepperIndicatorDemo(),
            ],
          ),
        ),
      ),
    ));
  }
}

class StepperIndicatorDemo extends StatefulWidget {
  const StepperIndicatorDemo({super.key});

  @override
  _StepperIndicatorDemoState createState() => _StepperIndicatorDemoState();
}

class _StepperIndicatorDemoState extends State<StepperIndicatorDemo> {
  final PageController _pageController = PageController();
  final List<String> images = [
    'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*KGNmqdOKLH2_Uy7YYdnBHg.png',
    'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*KGNmqdOKLH2_Uy7YYdnBHg.png',
    'https://miro.medium.com/v2/resize:fit:1400/format:webp/1*KGNmqdOKLH2_Uy7YYdnBHg.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 350,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.network(
                height: 300,
                images[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Positioned(
          bottom: 15,
          child: AppDividedStepper(
            pageController: _pageController,
            itemCount: images.length,
          ),
        ),
      ],
    );
  }
}
