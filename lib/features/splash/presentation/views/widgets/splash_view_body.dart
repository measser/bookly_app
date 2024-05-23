import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/units/app_router.dart';
import 'package:bookly_app/core/units/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController1;
  late Animation<Offset> slidingAnimation1;

  @override
  void initState() {
    super.initState();
    initialSlidingAnimation();
    initialSlidingAnimation2();
    navigateToHome();
  }





  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          builder: (context,_){
            return SlideTransition(
                position: slidingAnimation1,
                child: Image.asset(AssetsData.logo));
          },
          animation: slidingAnimation1,
        ),
        const SizedBox(
          height: 4,
        ),
        Slidingtext(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initialSlidingAnimation2() {
    animationController1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation1 = Tween<Offset>(begin: const Offset(-2, 0), end: Offset.zero)
        .animate(animationController1);
    animationController1.forward();
  }

  void initialSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),(){
       // Get.to(()=>const HomeView(),duration: kTranstionDuration,transition:Transition.fade);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}


