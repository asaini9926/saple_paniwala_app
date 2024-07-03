import 'package:flutter/material.dart';

int _selectedIndex = 0;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PaaniWala',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/water.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        titleTextStyle: const TextStyle(
            color: Colors.transparent,
            fontSize: 30,
            fontFamily: AutofillHints.language),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: 600,
        color: Colors.white,
        margin: const EdgeInsets.only(top: 0),
        child: Center(
            child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(0),
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                    height: 100,
                    child: Image(image: AssetImage('images/logo.png'))),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Login into your account using Email',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                const TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "abc@gmail.com",
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const TextField(
                  decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "1234",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "forget password",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.yellow,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: Container(
                      height: 50,
                      width: 450,
                      padding: const EdgeInsets.only(top: 10),
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 30),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don't have account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/new_account');
                        },
                        child: const Text(
                          'register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _selectedIndex = index;
          switch (index) {
            case 0:
            case 1:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/login');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('images/home.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('images/favorite.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('images/user.png'), label: ' '),
        ],
      ),
    );
  }
}
