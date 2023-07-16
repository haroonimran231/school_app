import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/pages/home_page/home_page.dart';

late bool _passwordVissible;

class LoginPage extends StatefulWidget {
  static String routeName = "LoginPage";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obsecureText = true;
  final _formkey = GlobalKey<FormState>();
  // @override
  // void initState() {
  //   super.initState();
  //   // _passwordVissible = _obsecureText;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // appBar: AppBar(title: Text("data")),
        body: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/splash.png",
                    height: 160.0,
                    width: 160.0,
                  ),
                  // SizedBox(
                  //   height: 2,
                  // ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 36.0,
                            color: KTextWhiteColor),
                      ),
                      Text(
                        " Student",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 36.0,
                            color: KTextWhiteColor),
                      ),
                      // Theme.of(context).textTheme.bodyText1,
                    ],
                  ),
                  const SizedBox(
                    height: KDefaultPadding / 6,
                  ),
                  const Text(
                    "Sign in To Continue",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: KTextWhiteColor),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(KDefaultPadding * 3),
                  topRight: Radius.circular(KDefaultPadding * 3),
                ),
                color: KTextWhiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(KDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: KDefaultPadding,
                          ),
                          TextFormField(
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              color: KTextBlackColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: const InputDecoration(
                                labelText: "Mobile Number/Email",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                isDense: true,
                                labelStyle: TextStyle(
                                    fontSize: 15.0,
                                    color: KTextLightColor,
                                    height: 0.5),
                                hintStyle: TextStyle(
                                    fontSize: 16.0,
                                    color: KTextBlackColor,
                                    height: 0.5),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: KTextLightColor, width: 0.7),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: KTextLightColor,
                                  ),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: KTextLightColor,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: KPrimaryColor,
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: KErrorBorderColor, width: 1.2),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: KErrorBorderColor, width: 1.2),
                                )),
                          ),
                          const SizedBox(
                            height: KDefaultPadding,
                          ),
                          TextFormField(
                            obscureText: true,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(
                              color: KTextBlackColor,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w300,
                            ),
                            decoration: InputDecoration(
                              labelText: "Password",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              isDense: true,
                              labelStyle: const TextStyle(
                                  fontSize: 15.0,
                                  color: KTextLightColor,
                                  height: 0.5),
                              hintStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: KTextBlackColor,
                                  height: 0.5),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: KTextLightColor, width: 0.7),
                              ),
                              // border: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: KTextLightColor,
                              //   ),
                              // ),
                              // disabledBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: KTextLightColor,
                              //   ),
                              // ),
                              // focusedBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: KPrimaryColor,
                              //   ),
                              // ),
                              // errorBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //       color: KErrorBorderColor, width: 1.2),
                              // ),
                              // focusedErrorBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //       color: KErrorBorderColor, width: 1.2),
                              // ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                child: Icon(_obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              // IconButton(
                              //   onPressed: () {
                              //     setState(() {
                              //       _passwordVissible != _passwordVissible;
                              //     });
                              //   },
                              //   icon: Icon(_passwordVissible
                              //       ? Icons.visibility_off_outlined
                              //       : Icons.visibility_off_outlined),
                              //   iconSize: KDefaultPadding,
                              // ),
                            ),
                            onSaved: (obsecureText) {},
                          ),
                          const SizedBox(height: KDefaultPadding),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomePage(onPress: () {})),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: KDefaultPadding,
                                  right: KDefaultPadding),
                              padding:
                                  const EdgeInsets.only(right: KDefaultPadding),
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [KSecondaryColor, KPrimaryColor],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(0.5, 0.0),
                                  stops: [0.0, 0.1],
                                  tileMode: TileMode.clamp,
                                ),
                                borderRadius:
                                    BorderRadius.circular(KDefaultPadding),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Text(
                                      "SIGN IN",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward_outlined,
                                      size: 30.0,
                                      color: KTextWhiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: KDefaultPadding,
                          ),
                          const Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Forget Password",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: KPrimaryColor, fontSize: 15.0),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: double.maxFinite,
                          //   child: ElevatedButton(
                          //     style: ElevatedButton.styleFrom(
                          //       fixedSize: Size(355.0, 55.0),
                          //       backgroundColor: const Color(0xff8B010B),
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(12.0),
                          //         side:
                          //             const BorderSide(color: Colors.transparent),
                          //       ),
                          //     ),
                          //     onPressed: () {
                          //       Navigator.of(context).push(
                          //         MaterialPageRoute(
                          //             builder: (context) => ToDoPage()),
                          //       );
                          //     },
                          //     child: Text(
                          //       'Personal Information',
                          //       style: TextStyle(
                          //         color: Colors.white,
                          //         fontWeight: FontWeight.w600,
                          //         fontSize: 16.0,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
