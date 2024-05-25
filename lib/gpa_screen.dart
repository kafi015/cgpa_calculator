import 'package:cgpa_calculator/gpa_calculate_screen.dart';
import 'package:flutter/material.dart';

class GPAScreen extends StatefulWidget {
  const GPAScreen({super.key});

  @override
  State<GPAScreen> createState() => _GPAScreenState();
}

class _GPAScreenState extends State<GPAScreen> {
  TextEditingController _numberOfCourseETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter number Course you taken: '),
              const SizedBox(height: 20,),
              TextField(
                controller: _numberOfCourseETController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number of Course',
                  hintText: 'Enter number of course'
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return GPACalculateScreen(numberOfCourse: int.parse(_numberOfCourseETController.text));
                  }));
                },
                child: const Text('Enter'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
