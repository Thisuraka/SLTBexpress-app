import 'package:flutter/material.dart';
import 'package:sltbexpress/styles.dart';
import 'package:sltbexpress/widgets/custom_appbar.dart';
import 'package:sltbexpress/widgets/custom_button.dart';
import 'package:sltbexpress/widgets/custom_button2.dart';
import 'package:sltbexpress/widgets/custom_textbox.dart';

@override
void initState() {}

class EditProfileScreen extends StatefulWidget {
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _nic = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confPassword = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _busId = TextEditingController();

  String _userType = "passenger"; //driver

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: CustomAppbarWidget(
          mainTitle: "Edit profile",
          leadingImg: false,
          logo: false,
          searchIcon: false,
        ),
      ),
      body: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: SizedBox(
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
                  margin: const EdgeInsets.only(top: 140),
                  child: Column(
                    children: [
                      CustomTextBox(
                        controller: _nic,
                        hint: "NIC / Passport",
                        labelText: 'NIC / Passport',
                        prifixIcon: 'assets/icons/passId.png',
                        keyboardType: TextInputType.text,
                        readOnly: true,
                        obscureText: true,
                        onTap: () {},
                      ),
                      CustomTextBox(
                        controller: _emailAddress,
                        hint: "Email address",
                        labelText: 'Email address',
                        prifixIcon: 'assets/icons/email.png',
                        keyboardType: TextInputType.emailAddress,
                        readOnly: true,
                        newValue: (value) {
                          _emailAddress = value as TextEditingController;
                        },
                        onTap: () {},
                      ),
                      _userType == "driver"
                          ? CustomTextBox(
                              controller: _busId,
                              hint: "Bus ID",
                              labelText: 'Bus ID',
                              prifixIcon: 'assets/icons/passId.png',
                              keyboardType: TextInputType.text,
                              readOnly: true,
                              newValue: (value) {
                                _busId = value as TextEditingController;
                              },
                              onTap: () {},
                            )
                          : SizedBox(width: 1),
                      CustomTextBox(
                        controller: _name,
                        hint: "Full Name",
                        labelText: 'Full Name',
                        prifixIcon: 'assets/icons/account.png',
                        keyboardType: TextInputType.text,
                        newValue: (value) {
                          _name = value as TextEditingController;
                        },
                        onTap: () {},
                      ),
                      CustomTextBox(
                        controller: _phoneNumber,
                        hint: "Phone Number",
                        labelText: 'Phone Number',
                        prifixIcon: 'assets/icons/phone.png',
                        keyboardType: TextInputType.phone,
                        newValue: (value) {
                          _phoneNumber = value as TextEditingController;
                        },
                        onTap: () {},
                      ),
                      CustomTextBox(
                        controller: _password,
                        hint: "Password",
                        labelText: 'Password',
                        prifixIcon: 'assets/icons/lock.png',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        newValue: (value) {
                          _password = value as TextEditingController;
                        },
                        onTap: () {},
                      ),
                      CustomTextBox(
                        controller: _confPassword,
                        hint: "Confrim Password",
                        labelText: 'Confrim Password',
                        prifixIcon: 'assets/icons/lock.png',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        newValue: (value) {
                          _confPassword = value as TextEditingController;
                        },
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        child: CustomButton(
                          text: "Confrim",
                          width: 330.0,
                        ),
                        onTap: () async {},
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
