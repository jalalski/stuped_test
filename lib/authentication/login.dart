import 'package:flutter/material.dart';
import 'package:stuped_test/components/materailbutton.dart';
import 'package:stuped_test/components/sps.dart';
import 'package:stuped_test/components/textfont.dart';
import 'package:stuped_test/components/textformfild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(200)),
                    child: Image.asset("images/file.png")),
              ),
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Textfont(
                          text: "Login",
                          color: Colors.black,
                          size: 40,
                          bold: true),
                      const Sps(height: 7),
                      const Textfont(
                          text: "Enter your information to get your degree",
                          color: Colors.black54,
                          size: 17,
                          bold: false),
                      const Sps(height: 50),
                      const Textfont(
                          text: "Name",
                          color: Colors.black,
                          size: 19,
                          bold: true),
                      const Sps(height: 7),
                      CustomTextFormFild(
                          hint: "  Enter your first and last name",
                          controller: name),
                      const Sps(height: 20),
                      const Textfont(
                          text: "Email",
                          color: Colors.black,
                          size: 19,
                          bold: true),
                      const SizedBox(height: 7),
                      CustomTextFormFild(
                          hint: "Enter your email", controller: email),
                      Container(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("Forget password?")),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: CustomMaterailButoon(
                            onPressed: () {},
                            color: Colors.blue,
                            child: const Textfont(
                                text: "Login",
                                color: Colors.white,
                                size: 20,
                                bold: true),
                          )),
                      MaterialButton(
                        onPressed: () {},
                        color: const Color.fromARGB(255, 254, 104, 93),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Textfont(
                                text: "Login with google  ",
                                color: Colors.white,
                                size: 20,
                                bold: true),
                            SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset("images/googlelogo.png"),
                            )
                          ],
                        ),
                      ),
                      const Sps(height: 30),
                      const Center(
                          child: Text("Dont have an Account? Regester"))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
