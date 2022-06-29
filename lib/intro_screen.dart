import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task1_login_signup/login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
List<PageViewModel>? getPages(){
  return [
    PageViewModel(
      image:Image(image: AssetImage('assets/images/delivering-food.png' ),height: 250,),
    titleWidget: Text('Get food delivery to your  doorstep asap',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),textAlign: TextAlign.center,),
      body: 'We have young and professional delivery  team that will bring your food as soon as  possible to your doorstep',

    ),
    PageViewModel(
      image:Image(image: AssetImage('assets/images/sammy-done.png' ),height: 250,),
      title: 'Get food delivery to your  doorstep asap',
      body: 'We have young and professional delivery  team that will bring your food as soon as  possible to your doorstep',


    ),
  ];
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(40)
            ),
            child: MaterialButton(
            child: Text('Skip',style: TextStyle(color: Colors.black),),
              onPressed:(){}),
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('7',style: TextStyle(color: Colors.amber,fontSize: 50,fontWeight: FontWeight.w800),),
                  Text('Krave',style: TextStyle(color: Colors.teal,fontSize: 50,fontWeight: FontWeight.w800),)

                ],
              ),
              Expanded(
                child: IntroductionScreen(

                  dotsDecorator: DotsDecorator(
                    colors: [Colors.lime.shade50,Colors.lime.shade50,],
                  ),
                  isBottomSafeArea: false,
                  showNextButton: false,
                  globalBackgroundColor: Colors.white,
                  done: Text('Done',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  onDone: (){
                  },
                  pages: getPages(),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal
                ),
                child: MaterialButton(
                child: Text('Get Started '),
                    onPressed: (){}
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',style: TextStyle(fontSize: 20),),
                  TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(color: Colors.teal),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
