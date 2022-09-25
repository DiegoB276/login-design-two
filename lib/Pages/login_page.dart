import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepOrange,
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4,
                width: double.infinity,
                color: const Color.fromARGB(255, 87, 51, 144),
                child: Stack(
                  children: [
                    Positioned(
                      top: -10,
                      left: -40,
                      child: burbuja(),
                    ),
                    Positioned(top: 100, left: 350, child: burbuja()),
                    Positioned(top: 200, left: -40, child: burbuja()),
                    Positioned(top: 200, left: 210, child: burbuja2()),
                    Positioned(top: 30, left: 110, child: burbuja2()),
                    Positioned(top: 280, left: 340, child: burbuja2())
                  ],
                ),
              ),
              SafeArea(
                child: Container(
                  margin: const EdgeInsets.only(top: 70),
                  width: double.infinity,
                  child: const Icon(
                    Icons.person_pin,
                    color: Colors.white,
                    size: 120,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 290),
                    boxLogin(context), //Metodo BoxLogin
                    const SizedBox(height: 40),
                    Text(
                      "Si no tienes una cuenta",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 13),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Crea una cuenta....",
                      style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container burbuja() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 72, 55, 130)),
    );
  }

  Container burbuja2() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 72, 55, 130),
      ),
    );
  }

  Container boxLogin(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 232, 228),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15,
              offset: Offset(5, 10),
            )
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Login",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 30),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 220, 219, 222),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: GoogleFonts.poppins(
                fontSize: 17,
              ),
              decoration: const InputDecoration(
                  hintText: "Email..",
                  prefixIcon: Icon(Icons.email_rounded),
                  border: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 220, 219, 222),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: GoogleFonts.poppins(fontSize: 17),
              obscureText: isHidden,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.security),
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: const Icon(Icons.visibility),
                  ),
                  border: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 119, 110, 161),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Ingresar",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }
}
