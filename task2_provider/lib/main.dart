import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/sign_up_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: SignUpForm(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 40,
            width: 343,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {},
                ),
                SizedBox(width: 70),
                Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    print("Btn Pressed");
                  },
                  child: SizedBox(
                    width: 43,
                    height: 19,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5DB075),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                width: 343,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor: Color(0xFFF6F6F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 343,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Color(0xFFF6F6F6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 343,
                height: 50,
                child: Container(
                  width: double.infinity,
                  child: Consumer<SignUpProvider>(
                    builder: (context, signUpProvider, child) {
                      return TextFormField(
                        obscureText: !signUpProvider.showPassword,
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFDDDDDD), width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: TextButton(
                            onPressed: () {
                              signUpProvider.toggleShowPassword();
                            },
                            child: Text(
                              signUpProvider.showPassword ? "Hide" : "Show",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 16),
            Consumer<SignUpProvider>(
              builder: (context, signUpProvider, child) {
                return Checkbox(
                  value: signUpProvider.isChecked,
                  onChanged: (bool? value) {
                    signUpProvider.toggleCheckbox();
                  },
                  checkColor: Color.fromRGBO(246, 246, 246, 1),
                  activeColor: Color.fromRGBO(93, 176, 117, 1),
                  side: BorderSide(
                    color: Color.fromRGBO(232, 232, 232, 1),
                    width: 2,
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                );
              },
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "I would like to receive your newsletter and other promotional information.",
                style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        SizedBox(height: 43),
        SizedBox(
          height: 51,
          width: 343,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF5DB075)),
            ),
          ),
        ),
        SizedBox(height: 16),
        TextButton(
          onPressed: () => {},
          child: Text(
            "Forgot your password?",
            style: TextStyle(
              color: Color.fromRGBO(93, 176, 117, 1),
            ),
          ),
        ),
      ],
    );
  }
}
