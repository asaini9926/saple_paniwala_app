import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

int _selectedIndex = 0;

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        height: 750,
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
                  'Create New Account',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Setup your Email and Password you can change it later',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                const TextField(
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      label: Text("Name"),
                      hintText: "Ramanujan",
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const TextField(
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      label: Text("Mobile"),
                      hintText: "09876543",
                      prefix: Text('+91'),
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const TextField(
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "abc@gmail.com",
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const TextField(
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "1234",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const TextField(
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      hintText: "1234",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      hintStyle:
                          TextStyle(fontSize: 25, color: Colors.black38)),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 450,
                      padding: const EdgeInsets.only(top: 5),
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Login',
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
