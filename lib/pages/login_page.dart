// ignore_for_file: unused_import

import 'package:app/pages/signup_page.dart';
import 'package:app/theme/colors.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/square_tile.dart';
import '../components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in here
  void signUserIn(BuildContext context) {
    // authenticate user

    // navigate to home page
    Navigator.pushNamed(context, '/skeletonpage');
  }

  void goSignUp(BuildContext context) {
    // authenticate user

    // navigate to sign up
    Navigator.pushNamed(context, '/signuppage');
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
        
                // welcome back, you've been missed!
                Center(
                  child: Text(
                    'Welcome back you\'ve been missed!',
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

              // sign in button
             SizedBox(
               height:40, //height of button
     width:40,
               child: ElevatedButton(
                onPressed: () => signUserIn(context),
               style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromRGBO(69,203,178,1.000), // Replace with your desired RGB values
                 padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                 
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8),
                   
                 ),
               ),
               
                         child: const Text("Login"),
             ),
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
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const SizedBox(width: 4),

                  GestureDetector(
                    onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => new SignupPage(),
      ),
    );
  },
                    
                  
                      child: Text(
                    'Register now',
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
