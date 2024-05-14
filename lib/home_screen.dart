import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List itemList = [
    {
      'name': 'Pullover',
      'color': 'Black',
      'size': 'L',
      'price': '51',
      'img': 'assets/images/pullover.png',
      'itemCount': 1
    },
    {
      'name': 'T-Shirt',
      'color': 'Gray',
      'size': 'L',
      'price': '30',
      'img': 'assets/images/shirt.png',
      'itemCount': 1
    },
    {
      'name': 'Sport Dress',
      'color': 'Black',
      'size': 'M',
      'price': '43',
      'img': 'assets/images/sportDress.png',
      'itemCount': 1
    },
  ];

  mySnackMsg(message, delay, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
        duration: Duration(seconds: delay),
        action: SnackBarAction(
            label: "OK",
            textColor: Colors.red,
            backgroundColor: Colors.white,
            onPressed: () {}),
      ),
    );
  }

  myAlertDialog({
    required context,
    required String title,
    required String content,
    required String button,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            content: Text(
              content,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
            ),
            actionsPadding: const EdgeInsets.all(20),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    button,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: Colors.white,
                      ),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(child: _buildBody(context)),
      bottomNavigationBar: _bottomNavBar(context, itemList),
    );
  }

  Padding _buildBody(BuildContext context) {
    void itemInc(index) {
      if (itemList[index]['itemCount'] < 5) {
        itemList[index]['itemCount']++;
      }
      if (itemList[index]['itemCount'] == 5) {
        myAlertDialog(
          context: context,
          title: 'Congratulations!',
          content: 'You have added 5 ${itemList[index]['name']} on your bag',
          button: 'OKAY',
        );
      }

      setState(() {});
    }

    void itemDec(index) {
      if (itemList[index]['itemCount'] != 0) {
        itemList[index]['itemCount']--;
      }
      setState(() {});
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
              width: double.infinity,
              child: Text(
                'My Bag',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Metropolis'),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          ListView.builder(
            itemCount: itemList.length,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 30,
                          child: Image.asset(
                            itemList[index]['img'],
                            fit: BoxFit.cover,
                          )),
                      Expanded(
                        flex: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  itemList[index]['name'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Metropolis',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Wrap(
                                  children: [
                                    const Text(
                                      'Color: ',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                    Text(
                                      itemList[index]['color'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'Size: ',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                    Text(
                                      itemList[index]['size'],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                        fontFamily: 'Metropolis',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Wrap(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        itemDec(index);
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.white,
                                        size: 25,
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.black,
                                              blurRadius: 2.0)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height: 40,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  itemList[index]['itemCount']
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                    fontFamily: 'Metropolis',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                    IconButton(
                                      onPressed: () {
                                        itemInc(index);
                                      },
                                      icon: const Icon(
                                        Icons.add_circle,
                                        color: Colors.white,
                                        shadows: <Shadow>[
                                          Shadow(
                                              color: Colors.black,
                                              blurRadius: 2.0)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              Text(
                                '${itemList[index]['price']}\$',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Metropolis',
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Padding _bottomNavBar(BuildContext context, List itemList) {
    num totalPrice() {
      num total = 0;
      for (var item in itemList) {
        total += (int.tryParse(item['price']) ?? 0) * item['itemCount'];
      }
      return total;
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Amount',
                    style: TextStyle(
                      color: Color(0XFF9B9B9B),
                      fontSize: 14,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                  Text(
                    '${totalPrice().toString()}\$',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Metropolis',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                mySnackMsg('Congratulations !', 2, context);
              },
              child: const Text(
                "CHECK OUT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Metropolis',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
