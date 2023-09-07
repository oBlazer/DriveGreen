// ignore_for_file: unused_import

import 'package:app/theme/colors.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/square_tile.dart';
import '../components/textfield.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign up user in here
  void signUserUp(BuildContext context) {
    // authenticate user

    // navigate to home page
    Navigator.pushNamed(context, '/skeletonpage');
  }

  // show dialog box
  void displayMessageToUser(String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: darkBackgroundColor,
        title: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 50),

             
                // logo
                Image.asset(
                  'lib/images/DriveGreen Logo.png',
                  width: 300,
                  height: 250,
                  ),
          
                const SizedBox(height: 35),
        
                // 
                Center(
                  child: Text(
                    'Please enter your information below to sign up.',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ),
              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign up button
             ElevatedButton(
              onPressed: () => signUserUp(context),
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(69,203,178,1.000), // Replace with your desired RGB values
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
            child: const Text("Sign Up"),
),


              const SizedBox(height: 25),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(
                    imagePath: 'lib/images/google.png',
                    onTap: () =>
                        displayMessageToUser("Google button pressed", context),
                  ),

                  const SizedBox(width: 25),

                  // apple button
                  SquareTile(
                    imagePath: 'lib/images/apple.png',
                    onTap: () =>
                        displayMessageToUser("Apple button pressed", context),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const SizedBox(width: 4),

                  GestureDetector(
                    onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => new LoginPage(),
      ),
    );
  },
              child: Text(
                    'Login now',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                  )
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
