import 'package:cgpa_calculator/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text('CGPA Calculator',style: TextStyle(fontSize: 40),),
            const SizedBox(height: 20,),
            const Icon(Icons.calculate_outlined,size: 80,),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                  return const HomeScreen();
                }), (route) => false);
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Let\'s Go!',style: TextStyle(fontSize: 24),),
              ),

            ),
          ],
        ),
      ),

    );
  }
}
