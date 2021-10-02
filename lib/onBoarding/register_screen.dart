import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/custom_appbar.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_button2.dart';
import 'package:sltbexpress/widgets/custom_textbox.dart';

@override
void initState() {}

class RegisterScreen extends StatefulWidget {
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _nic = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confPassword = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();

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
              mainTitle: "Create account",
              leadingImg: false,
              logo: false,
              searchIcon: false,
            ),
          ),
          body: SizedBox(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                  )),
                  Container(
                    height: 550,
                    // color: Colors.amber,
                    margin: const EdgeInsets.only(top: 130),
                    child: Column(
                      children: [
                        CustomTextBox(
                          controller: _nic,
                          hint: "NIC / Passport",
                          labelText: 'NIC / Passport',
                          prifixIcon: 'assets/icons/passId.png',
                          keyboardType: TextInputType.text,
                          onTap: () {},
                        ),
                        CustomTextBox(
                          controller: _name,
                          hint: "Full Name",
                          labelText: 'Full Name',
                          prifixIcon: 'assets/icons/account.png',
                          keyboardType: TextInputType.text,
                          onTap: () {},
                        ),
                        CustomTextBox(
                          controller: _phoneNumber,
                          hint: "Phone Number",
                          labelText: 'Phone Number',
                          prifixIcon: 'assets/icons/phone.png',
                          keyboardType: TextInputType.phone,
                          onTap: () {},
                        ),
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
                        CustomTextBox(
                          controller: _confPassword,
                          hint: "Confrim Password",
                          labelText: 'Confrim Password',
                          prifixIcon: 'assets/icons/lock.png',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: CustomButton(
                            text: "Register",
                            width: 330.0,
                          ),
                          onTap: () async {},
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          child: const Text(
                            "Terms and Conditions",
                            style: TextButtonStyle,
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          child: CustomButton2(
                            text: "Already have Account?  Login",
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
