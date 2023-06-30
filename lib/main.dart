// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: BackGround(
        componet: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoWidget(),
            ContentWidget(),
            ButtonSignUp(
              cor: Color.fromARGB(255, 112, 53, 248),
              texto: 'Sign Up with Email ID',
              corText: Colors.white,
            ),
            ButtonSignUp(
              imagem: 'images/g.png',
              texto: 'Sign Up With Google',
              corText: Colors.black,
              cor: Colors.white,
            ),
            AccountRegister()
          ],
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  final Widget componet;
  const BackGround({
    Key? key,
    required this.componet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromARGB(255, 19, 18, 18),
      child: componet,
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 112, 53, 248),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 112, 53, 248),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(100, 100),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 100,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 112, 53, 248),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(100, 100),
                    topRight: Radius.elliptical(100, 100))),
          )
        ],
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 250,
          height: 100,
          child: Text(
            'Get your Money Under Control',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 200,
          height: 100,
          child: Text(
            'Manage your expenses. Seamlessly.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonSignUp extends StatelessWidget {
  final String? imagem;
  final String texto;
  final Color corText;
  final Color cor;
  const ButtonSignUp({
    Key? key,
    this.imagem,
    required this.texto,
    required this.corText,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 400,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagem != null)
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Image.asset(
                  imagem!,
                  height: 23,
                  width: 23,
                ),
              ),
            Text(
              texto,
              style: TextStyle(color: corText, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountRegister extends StatelessWidget {
  const AccountRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 300,
        height: 50,
        alignment: Alignment.center,
        child: RichText(
          text: const TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(fontSize: 18),
              children: [
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

