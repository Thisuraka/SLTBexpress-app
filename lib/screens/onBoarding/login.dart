import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/custom_appbar.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_button2.dart';
import 'package:sltbexpress/widgets/custom_textbox.dart';

@override
void initState() {}

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: CustomAppbarWidget(
              mainTitle: "Login",
              leadingImg: false,
              logo: false,
              searchIcon: false,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 150,
                      ),
                    ),
                    Container(
                      height: 510,
                      margin: const EdgeInsets.only(top: 150),
                      child: Column(
                        children: [
                          CustomTextBox(
                            controller: _emailAddress,
                            hint: "Email address",
                            labelText: 'Email address',
                            prifixIcon: 'assets/icons/email.png',
                            keyboardType: TextInputType.emailAddress,
                            onTap: () {},
                          ),
                          CustomTextBox(
                            controller: _password,
                            hint: "Password",
                            labelText: 'Password',
                            prifixIcon: 'assets/icons/lock.png',
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            child: CustomButton(
                              text: "Login",
                              width: 330.0,
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          GestureDetector(
                            child: CustomButton2(
                              text: "Register",
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            child: Image.asset('assets/images/signGoogle.png'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
