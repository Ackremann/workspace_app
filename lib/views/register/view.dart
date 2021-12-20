import 'package:flutter/material.dart';
import 'package:workspace_app/views/home/view.dart';
import 'package:workspace_app/views/login/view.dart';
import 'package:workspace_app/views/register_bin_code/view.dart';

import 'package:workspace_app/widget/app_textfield.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Register with us',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Space Co-Working,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Full Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const AppTextField(),
                const SizedBox(height: 10),
                const Text(
                  'Email Address',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const AppTextField(),
                const SizedBox(height: 10),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const AppTextField(),
                const SizedBox(height: 10),
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const AppTextField(),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PinCodeVerificationScreen(),
                          ));
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white70,
                      minimumSize: Size(300, 40),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'or conect via',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white38,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: const BorderSide(color: Colors.white, width: 1),
                          primary: Colors.deepPurple,
                          minimumSize: const Size(120, 45),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white38,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          side: const BorderSide(color: Colors.white, width: 1),
                          primary: Colors.deepPurple,
                          minimumSize: const Size(120, 45),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have a account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ));
                        },
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
