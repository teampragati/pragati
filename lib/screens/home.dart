import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:pragati/screens/listitem1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DashboardPage(),
    OrdersPage(),
    PaymentsPage(),
    SupportPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee,),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 36, 216, 126),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/texturebg.png',
                    height: MediaQuery.of(context).size.height * 0.4655,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.04,
                  child: Image.asset(
                    'assets/av.png',
                    width: 50,
                    height: 50,
                  ),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 0.055,
                  left: MediaQuery.of(context).size.width * 0.18,
                  child: Text(
                    'Ramkumar Yadav',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.white, // Set text color to white for contrast
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.18,
                  child: Text(
                    'Surat, Gujarat',
                    style: TextStyle(color: Colors.white), // Same white color
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: MediaQuery.of(context).size.width * 0.2,
                  child: GestureDetector(
                    onTap: () {
                      // Handle button action
                    },
                    child: CircleAvatar(
                      radius: 24,
                      child:
                          SvgPicture.asset('assets/dashicons_translation.svg'),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      // Handle button action
                    },
                    child: CircleAvatar(
                      radius: 24,
                      child: SvgPicture.asset(
                        'assets/notif.svg',
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
  top: MediaQuery.of(context).size.height * 0.13,
  left: MediaQuery.of(context).size.width * 0.05,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => List1Screen()),
      );
    },
    child: Image.asset(
      'assets/list.png',
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.12,
    ),
  ),
),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      // Handle button action
                    },
                    child: Image.asset(
                      'assets/orders.png',
                      width: MediaQuery.of(context).size.width * 0.43,
                      height: MediaQuery.of(context).size.height * 0.36,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.15,
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      // Handle button action
                    },
                    child: Image.asset(
                      'assets/paisa.png',
                      width: MediaQuery.of(context).size.width * 0.43,
                      height: MediaQuery.of(context).size.height * 0.36,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.15,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      // Handle button action
                    },
                    child: Image.asset(
                      'assets/track.png',
                      width: MediaQuery.of(context).size.width * 0.43,
                      height: MediaQuery.of(context).size.height * 0.36,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Recent Activity',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        _buildRecentActivityItem(
                          context,
                          'Product Listed',
                          'Product ID: 12345\nName: Product No 1\nQuantity: 200 Kgs\nType: Grains',
                          '24 August',
                          '5:40 PM',
                          'assets/listm.svg',
                        ),
                        _buildRecentActivityItem(
                          context,
                          'Received Order',
                          'Product ID: 12345\nQuantity: 200 Kgs\nType: Grains',
                          '25 August',
                          '1:20 PM',
                          'assets/orders.svg',
                        ),
                        _buildRecentActivityItem(
                          context,
                          'Pickup Requested',
                          'Product ID: 12345\nQuantity: 200 Kgs\nType: Grains',
                          '26 August',
                          '2:40 PM',
                          'assets/track.svg',
                        ),
                        _buildRecentActivityItem(
                          context,
                          'Payment Received',
                          'Product ID: 12345\nQuantity: 200 Kgs\nType: Grains',
                          '27 August',
                          '2:40 PM',
                          'assets/paisa.svg',
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'See More',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ONDC Academy",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See More",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 31, 32, 122),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/ondc.png')),
                        Center(
                          child: DotsIndicator(
                            dotsCount: 3,
                            position: 0,
                            decorator: DotsDecorator(
                                activeColor: Color.fromARGB(255, 24, 205, 152)),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Most Selling Crops",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ]),
                            Padding(padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                _buildRankItem(
                                context,
                                'Crop Name 1',
                                'April to May\n500 Kg',
                                '#1',
                                'assets/wheat.png',
                              ),
                              _buildRankItem(
                                context,
                                'Crop Name',
                                'April to May\n400 Kg',
                                '#2',
                                'assets/bajra.png',
                              ),
                              _buildRankItem(
                                context,
                                'Crop Name',
                                'April to May\n300 Kg',
                                '#3',
                                'assets/peanut.png',
                              ),
                              _buildRankItem(
                                context,
                                'Crop Name',
                                'April to May\n200 Kg',
                                '#4',
                                'assets/potato.png',
                              ),
                              _buildRankItem(
                                context,
                                'Crop Name',
                                'April to May\n100 Kg',
                                '#5',
                                'assets/mango.png',
                              ),
                              ],
                            ),),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/foot.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecentActivityItem(
    BuildContext context,
    String title,
    String details,
    String date,
    String time,
    String asset,
  ) {
    return Card(
      surfaceTintColor: Color.fromARGB(255, 24, 154, 147),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: SvgPicture.asset(asset),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(details),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(time),
              Text(date),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRankItem(
    BuildContext context,
    String title,
    String details,
    String rank,
    String asset,
  ) {
    return Card(
      surfaceTintColor: Color.fromARGB(255, 24, 154, 147),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(asset),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(details),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(rank, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Orders Page'),
      ),
    );
  }
}

class PaymentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Payments Page'),
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Support Page'),
      ),
    );
  }
}
