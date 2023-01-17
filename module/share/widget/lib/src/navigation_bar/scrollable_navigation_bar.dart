import 'package:flutter/material.dart';

class ScrollableNavigationBar extends StatefulWidget {
  final Widget child;
  final PreferredSize bottom;

  const ScrollableNavigationBar({
    Key? key,
    required this.child,
    required this.bottom,
  }) : super(key: key);

  @override
  State<ScrollableNavigationBar> createState() => _ScrollableNavigationBarState();
}

class _ScrollableNavigationBarState extends State<ScrollableNavigationBar> with SingleTickerProviderStateMixin {

  double distanceDrag = 0;
  late PageController pageController;
  late AnimationController animationController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 1,
    );
    animationController = AnimationController(
      value: 0,
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );

    super.initState();

    _showNavigationBottom();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        NotificationListener(
          onNotification: _updateSpeedScroll,
          child: widget.child,
        ),
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => Align(
            heightFactor: _bottomHeight * 1.6,
            alignment: _alignmentBottom,
            child: SizedBox(
              height: _bottomHeight,
              child: widget.bottom,
            ),
          ),
        ),
      ],
    );
  }

  double get _animationValue => animationController.value;

  double get _bottomHeight => widget.bottom.preferredSize.height;

  Alignment get _alignmentBottom => Alignment(0, 1 + _animationValue);

  void _showNavigationBottom() {
    animationController.animateTo(0, curve: Curves.easeOut);
  }

  void _hideNavigationBottom() {
    animationController.animateTo(1, curve: Curves.easeIn);
  }

  bool _updateSpeedScroll(ScrollNotification notification) {
    if (notification is ScrollStartNotification) {
      distanceDrag = 0;
    }

    if (notification is ScrollUpdateNotification) {
      final metrics = notification.metrics;
      if (metrics.axis == Axis.horizontal) {
        _showNavigationBottom();
        return true;
      }

      final needProcess = distanceDrag.abs() > 100;
      final zeroSpace = metrics.extentBefore == 0 || metrics.extentAfter == 0;

      distanceDrag += notification.scrollDelta ?? 0;

      if (needProcess || zeroSpace) {
        bool isHide = (distanceDrag < 0 || metrics.extentBefore == 0);
        bool isShow = (distanceDrag > 0 || metrics.extentAfter == 0);

        if (isHide || isShow) {
          distanceDrag = 0;
        }

        if (isHide && _animationValue != 0.0) {
          if (animationController.isCompleted) {
            _showNavigationBottom();
          }
        }
        if (isShow && _animationValue != 1.0) {
          if (animationController.isCompleted) {
            _hideNavigationBottom();
          }
        }
      }
    }

    return true;
  }
}
