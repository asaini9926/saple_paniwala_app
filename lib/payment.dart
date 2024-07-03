import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/checkout');
                        },
                        icon: const Icon(Icons.arrow_back_ios))),
                const Spacer(),
                const Text(
                  'Payment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/favorite.png')),
                ),
              ],
            ),
          ],
        ),
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

int _selectedIndex = 0;
