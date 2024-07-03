import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _selectedIndex = 0;
int itemCt = 1;

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        icon: const Icon(Icons.arrow_back_ios))),
                const Spacer(),
                const Text(
                  'Item Details',
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
              height: 300,
              // width: 420,
              margin: const EdgeInsets.only(left: 20, right: 20),
              // padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('images/bottle.jpg'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 30, right: 100),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: const Text(
                'Bisleri Mountain fresh Distilled water 1L',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 15, right: 100),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: const Row(
                children: [
                  Icon(
                    Icons.star_rate,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.green,
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text('(146 Reviews)',
                      style: TextStyle(
                        fontSize: 22,
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 15, right: 100),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: const Text(
                'Price 25 Rupee',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, top: 15, right: 100, bottom: 40),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: const Text(
                "Bisleri 1 Liter Bottle offers pure, mineral-rich water ideal for daily hydration. Trusted for quality, it ensures safe and refreshing consumption.",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/minus-sign.png'),
                ),
                const Text('1', style: TextStyle(fontSize: 24)),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/add.png'),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      debugPrint('item added to cart');
                      Navigator.pushReplacementNamed(context, '/checkout');
                    },
                    child: Container(
                      height: 70,
                      width: 280,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.green,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'Add to Cart',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            '|',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Spacer(),
                          Text(
                            '25 Rupee',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )
                        ],
                      ),
                    ))
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

class CalForItem {
  int totalPrice(int itemCt, int itemPc) {
    return itemCt * itemPc;
  }

  int incDec(int ctNum, bool plus) {
    if (plus) {
      return ctNum + 1;
    } else {
      return ctNum - 1;
    }
  }
}
