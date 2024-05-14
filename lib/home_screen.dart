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
      'img': 'assets/images/pullover.png'
    },
    {
      'name': 'T-Shirt',
      'color': 'Gray',
      'size': 'L',
      'price': '30',
      'img': 'assets/images/tshirt.png'
    },
    {
      'name': 'Sport Dress',
      'color': 'Black',
      'size': 'M',
      'price': '43',
      'img': 'assets/images/sportdress.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'My Bag',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              ListView.builder(
                itemCount: itemList.length,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*.15,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(flex: 30,child: Image.asset(itemList[index]['img']) ),
                          Expanded(flex: 30,child: Text(itemList[index]['color']) ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),



        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount'),
                    Text(
                      '\$5',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("CHECK OUT"),
                )
              ],
            ),
          ),
        ));
  }
}
