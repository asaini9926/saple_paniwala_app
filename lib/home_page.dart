import 'package:flutter/material.dart';

int _selectedIndex = 0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Container(
              width: 450,
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.green,
                  ),
                  TextButton(
                    onPressed: () {
                      debugPrint('Address');
                    },
                    child: const Text(
                      'Address',
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/checkout');
                      },
                      icon: Image.asset('images/cart.png'))
                ],
              ),
            ),
            Container(
              width: 450,
              height: 70,
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: Row(
                children: [
                  Image.asset('images/loupe1.png'),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search", hintStyle: TextStyle(fontSize: 24)),
                  )),
                  // const Spacer(),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          debugPrint('Hello');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                          backgroundColor: Colors.white,
                        ),
                        child: Image.asset('images/setting1.png')),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Shop by Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      debugPrint("see all");
                    },
                    child: Text(
                      "see all",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[200],
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
            Container(
              height: 700,
              width: 400,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                padding: const EdgeInsets.all(10),
                children: List.generate(6, (index) {
                  return Container(
                    height: 350,
                    width: 50,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            debugPrint("bisleri $index is clicked");
                            Navigator.pushReplacementNamed(
                                context, '/item_details');
                          },
                          child: Image.asset('images/image.png'),
                        ),
                        Text(
                          "    bisleri $index\n1L pack of $index",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              height: 200,
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(10, 25, 10, 10),
              child: Center(
                child: Image.asset('images/banner1.png'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Deals",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      debugPrint("see all");
                    },
                    child: const Text(
                      "see all",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    )),
              ],
            ),
            Container(
              height: 230,
              width: 400,
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                padding: const EdgeInsets.all(10),
                children: List.generate(4, (index) {
                  return Container(
                    color: Colors.white,
                    height: 70,
                    width: 70,
                    child: Center(
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              debugPrint("item $index is clicked");
                              Navigator.pushReplacementNamed(
                                  context, '/item_details');
                            },
                            child: Image.asset('images/image.png'),
                          ),
                          Text(
                            "    bisleri $index\n1L pack of $index",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
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
