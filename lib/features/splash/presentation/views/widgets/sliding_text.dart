import 'package:flutter/cupertino.dart';

class Slidingtext extends StatelessWidget {
  const Slidingtext({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context,_){
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      }, animation: slidingAnimation,
    );
  }
}