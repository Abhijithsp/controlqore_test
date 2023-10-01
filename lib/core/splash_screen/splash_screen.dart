
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';
import '../login/view/login_screen.dart';
import 'cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashCubit>(context).loadSplash();
     return Scaffold(
       backgroundColor: colorGold,
       body: BlocListener<SplashCubit,SplashState>(
         listener: (context,state){
           if(state is loadLoginScreen){
               Navigator.pop(context);
               Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: LoginScreen()));

           }else{
             Navigator.pop(context);
             Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: LoginScreen()));
             // Navigator.pushNamed(context, dashboard);
           }
         },
         child: body(),
       ),
     );
  }
  Widget body(){
     return   Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: Text("ControlQore",style: extraLargeText,),
         ),
       ],
     );
  }
}