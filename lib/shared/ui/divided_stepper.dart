import 'package:flutter/material.dart';

class AppDividedStepper extends StatefulWidget {
  final PageController pageController;
  final int itemCount;
  final double indicatorHeight;
  final Duration duration;

  const AppDividedStepper({
    super.key,
    required this.pageController,
    required this.itemCount,
    this.indicatorHeight = 4.0,
    this.duration = const Duration(seconds: 5),
  });

  @override
  _AppDividedStepperState createState() => _AppDividedStepperState();
}

class _AppDividedStepperState extends State<AppDividedStepper>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    // Создаем анимацию для прогресса
    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );

    // Добавляем слушатель для обновления состояния
    _animationController.addListener(() {
      setState(() {}); // Перестраиваем виджет при каждом изменении анимации
    });

    widget.pageController.addListener(_updatePage);

    _startAutoProgress();
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_updatePage);
    _animationController.dispose();
    super.dispose();
  }

  void _updatePage() {
    if (!mounted || !widget.pageController.hasClients) return;

    setState(() {
      _currentPage = widget.pageController.page?.round() ?? 0;
    });

    _startAutoProgress(); // Перезапуск анимации при смене страницы
  }

  void _startAutoProgress() {
    _animationController.reset();
    _animationController.forward().whenComplete(() {
      if (!mounted || !widget.pageController.hasClients) return;

      if (_currentPage < widget.itemCount - 1) {
        widget.pageController.animateToPage(
          _currentPage + 1,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        widget.pageController.animateToPage(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
      _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Curves.linear,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.itemCount, (index) {
        return GestureDetector(
          onTap: () {
            widget.pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 250),
              curve: Curves.easeInOut,
            );
          },
          child: Container(
            height: widget.indicatorHeight,
            width: 40,
            margin: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color:
                  _currentPage == index ? theme.primaryColor : theme.hintColor,
              borderRadius: BorderRadius.circular(2),
            ),
            child: _currentPage == index
                ? LinearProgressIndicator(
                    value: _progressAnimation.value, // Используем анимацию
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  )
                : SizedBox(),
          ),
        );
      }),
    );
  }
}
