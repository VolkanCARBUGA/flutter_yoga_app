import 'package:flutter/material.dart';
import 'package:flutter_yoga_app/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/home_screen.dart';

class LoginCredentials extends StatefulWidget {
  const LoginCredentials({super.key});

  @override
  State<LoginCredentials> createState() => _LoginCredentialsState();
}

class _LoginCredentialsState extends State<LoginCredentials> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Lütfen Giriş Yap",
            style: GoogleFonts.breeSerif(
                color: Colors.black,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                suffixIcon: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: appPadding * 0.75, horizontal: appPadding),
                hintText: "E Mail",
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  //   borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                suffixIcon: Icon(
                  Icons.key_outlined,
                  size: 25,
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: appPadding * 0.75, horizontal: appPadding),
                hintText: "Şifre",
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Text(
            "Şifremi Unuttum",
            style: GoogleFonts.sueEllenFrancisco(
                color: Colors.black,
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                )),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.greenAccent,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Giris Yap",
                  style: GoogleFonts.sueEllenFrancisco(
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                width: size.width / 2,
                height: size.height * 0.05,
              ),
            ),
          )
        ],
      ),
    );
  }
}
