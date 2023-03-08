import 'package:flutter/material.dart';
import 'package:wrike_clone/src/pages/second_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 60, left: 60, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 130,
                        height: 50,
                        child: Image.asset(
                          'assets/logos/monday_logo-full-big.png',
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 80),
                  Container(
                      height: 100,
                      // color: Colors.orange,
                      child: Text(
                        'Set up your\naccount',
                        style: GoogleFonts.roboto(
                          fontSize: 32,textStyle: TextStyle(fontWeight: FontWeight.w600)
                        ),
                        ),
                      ),
                  SizedBox(height: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            // color: Colors.blueGrey,
                            child: Text('Full name')),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: formKey,
                          child: Container(
                            width: 250,
                            height: 80,
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: 'e.g. Jane Doe',
                                  border: OutlineInputBorder(),
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
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            // color: Colors.blueAccent,
                            child: Text('Account name')),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          key: formKey2,
                          child: Container(
                            width: 250,
                            height: 80,
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: 'e.g. Acme Corporation',
                                  border: OutlineInputBorder(),
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
                        SizedBox(
                          height: 20,
                        ),
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
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
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
                              if (isValiedForm) {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SecondPage(),
                                ));
                              }
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
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
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://dapulse-res.cloudinary.com/image/upload/monday_platform/signup/signup-right-side-assets/set-up-your-account-right-side-asset.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
