import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wrike_clone/src/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool isChecked = false;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 60, left: 60, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: Image.asset(
                          'assets/logos/monday_logo-full-big.png',
                        ),
                      ),
                      const SizedBox(height: 80),
                      SizedBox(
                        height: 100,
                        child: Text(
                          'Set up your\naccount',
                          style: GoogleFonts.roboto(
                              fontSize: 32,textStyle: const TextStyle(fontWeight: FontWeight.w600)
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text('Full name'),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey,
                        child: SizedBox(
                          width: 250,
                          height: 80,
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'e.g. Jane Doe',
                                border: const OutlineInputBorder(),
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (value) {
                              if (value != null && value.length < 3) {
                                return 'Please fill in Full name';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Account name'),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: formKey2,
                        child: SizedBox(
                          width: 250,
                          height: 80,
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: 'e.g. Acme Corporation',
                                border: const OutlineInputBorder(),
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (value) {
                              if (value != null && value.length < 3) {
                                return 'Please fill in Account name';
                              } else if (value != null && value.length < 3) {
                                return 'Account name needs at least 3\ncharacters';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text(
                              'I agree to the terms of service and\nPrivacy Policy'),
                        ],
                      ),
                      const SizedBox(height: 80,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 0,bottom: 0),
                            child: Container(
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextButton(
                                onPressed: () {
                                  final isValiedForm =
                                  formKey.currentState!.validate();
                                  formKey2.currentState!.validate();
                                  if (isValiedForm) {Get.to(HomePage());}
                                  // {
                                  //   Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => const HomePage(),
                                  //   ));
                                  // }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text("Continue",
                                        style: TextStyle(color: Colors.white)),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://dapulse-res.cloudinary.com/image/upload/monday_platform/signup/signup-right-side-assets/set-up-your-account-right-side-asset.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      )
    );
  }
}