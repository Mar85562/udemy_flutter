import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email Address',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if(value!.isEmpty) {
                        return 'Email Address must not be empty!';
                      }
                      return null;
                    }
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if(value!.isEmpty) {
                          return 'Password must not be empty';
                        }

                        return null;
                      },
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      suffixPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      isPassword: isPassword,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: () {
                      if (formKey.currentState?.validate()??false) {
                        print(emailController.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      TextButton(onPressed: () {

                      },
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
