import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFbbbbbb), width: 2));
    const LinkTextStyle =  TextStyle(
      fontSize:18,
      fontWeight: FontWeight.bold,
      color: Color(0xFF0079D0)
    );
    return MaterialApp(
        home: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/hudson.jpg"),
                  fit: BoxFit.cover
                )
              ),
              width: double.infinity,
              padding:EdgeInsets.symmetric(horizontal: 60),// отступы от края экрана
              child: SingleChildScrollView( //растяжение, сколлинг
                child: Column(children: [
                  SizedBox(height: 80),
                  const SizedBox(width: 150, height: 120, child: Image(image:AssetImage('assets/dart-logo.png')),),
                  SizedBox(height: 50),
                  Text('Введите логин в виде 10 цифр номера телефона',
                    style: TextStyle(fontSize:16, color: Color(0xFFB2FF59).withOpacity(1.0)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Телефон',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText: 'Пароль',
                    ),
                  ),
                  SizedBox(height: 28),
                  SizedBox(width: 154, height: 42, child:
                    ElevatedButton(onPressed: () {}, child: Text('Войти'),
                      style: ElevatedButton.styleFrom (
                        primary: Color(0xFF0079D0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(child: const Text('Регистрация', style: LinkTextStyle),
                      onTap: () {}),
                  SizedBox(height: 16),
                  InkWell(child: const Text('Забыли пароль?', style: LinkTextStyle),
                      onTap: () {}),
                  SizedBox(height: 170),
                ],
                ),
              ),
        )
        )
    );
  }
}


