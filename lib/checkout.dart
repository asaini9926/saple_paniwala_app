import 'package:flutter/material.dart';

int _selectedIndex = 0;

class Checkout extends StatelessWidget {
  const Checkout({super.key});
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
                          Navigator.pushReplacementNamed(
                              context, '/item_details');
                        },
                        icon: const Icon(Icons.arrow_back_ios))),
                const Spacer(),
                const Text(
                  'Checkout',
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
            Container(
              margin: const EdgeInsets.only(top: 20),
              // color: Colors.amber,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Image.asset('images/image.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                            'Bisleri Distilled water 1L',
                            style: TextStyle(fontSize: 22),
                            // softWrap: true,
                          ),
                        ),
                        Container(
                          // color: Colors.white,
                          alignment: Alignment.centerLeft,
                          width: 300,
                          child: const Text(
                            '1L',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black38),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 180,
                                // color: Colors.amber,
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  '25 Rupee',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                border: Border.all(color: Colors.green),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('images/minus-sign.png'),
                                  ),
                                  const Text('1',
                                      style: TextStyle(fontSize: 24)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('images/add.png'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              // color: Colors.amber,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Image.asset('images/image.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                            'Bisleri Distilled water 1L',
                            style: TextStyle(fontSize: 22),
                            // softWrap: true,
                          ),
                        ),
                        Container(
                          // color: Colors.white,
                          alignment: Alignment.centerLeft,
                          width: 300,
                          child: const Text(
                            '1L',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black38),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 180,
                                // color: Colors.amber,
                                margin: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  '25 Rupee',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                // color: Colors.amber,
                                border: Border.all(color: Colors.green),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('images/minus-sign.png'),
                                  ),
                                  const Text('1',
                                      style: TextStyle(fontSize: 24)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('images/add.png'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: 200,
              margin: const EdgeInsets.only(left: 30, right: 30),
              height: 100,
              // color: Colors.amber,
              child: const Row(
                children: [
                  Text(
                    'Total Items',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              // width: 200,
              margin: const EdgeInsets.only(left: 30, right: 30),
              height: 100,
              // color: Colors.amber,
              child: const Row(
                children: [
                  Text(
                    'Discount',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '5 Rupee',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              // width: 200,
              margin: const EdgeInsets.only(left: 30, right: 30),
              height: 100,
              // color: Colors.amber,
              child: const Row(
                children: [
                  Text(
                    'Grand Total',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Spacer(),
                  Text(
                    '45',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/payment');
                  },
                  child: Container(
                    height: 70,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // margin: const EdgeInsets.only(left: 100, top: 70),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: const Row(
                      children: [
                        Text(
                          'Place Order',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          '45',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
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
