import 'package:flutter/material.dart';
import 'package:flutter_stock_wallet/util/cards.dart';
import 'package:flutter_stock_wallet/util/add_contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(23, 89, 86, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(10, 58, 57, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Color.fromRGBO(70, 110, 109, 1),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Search by app',
                                style: TextStyle(
                                  color: Color.fromRGBO(70, 110, 109, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(10, 58, 57, 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Icon(
                          Icons.notifications_on_rounded,
                          color: Color.fromRGBO(87, 116, 117, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Hello',
                    style: TextStyle(
                      color: Color.fromRGBO(187, 204, 204, 0.7),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Image.asset(
                    'lib/icons/avatar/avatar-3.png',
                    height: 45,
                  ),
                  const SizedBox(width: 7),
                  const Text(
                    'Manuel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'USD / EUR: ',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        'lib/icons/down-arrow.png',
                        height: 12,
                        color: const Color.fromRGBO(187, 204, 204, 1),
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        '0.9028',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'BTC / USD: ',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 0.7),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        'lib/icons/up-arrow.png',
                        height: 12,
                        color: const Color.fromRGBO(187, 204, 204, 1),
                      ),
                      const SizedBox(width: 3),
                      const Text(
                        '41.0010',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TransactionCard(
                      cardType: 'Visa',
                      cardImagePath: 'lib/icons/visa.png',
                      cardNumber: 123456789,
                      balance: 1600.32,
                    ),
                    SizedBox(width: 20),
                    TransactionCard(
                      cardType: 'Visa',
                      cardImagePath: 'lib/icons/visa.png',
                      cardNumber: 123456789,
                      balance: 1600.32,
                    ),
                    SizedBox(width: 20),
                    TransactionCard(
                      cardType: 'Visa',
                      cardImagePath: 'lib/icons/visa.png',
                      cardNumber: 123456789,
                      balance: 1600.32,
                    ),
                    SizedBox(width: 20),
                    TransactionCard(
                      cardType: 'Visa',
                      cardImagePath: 'lib/icons/visa.png',
                      cardNumber: 123456789,
                      balance: 1600.32,
                    ),
                    SizedBox(width: 20),
                    TransactionCard(
                      cardType: 'Visa',
                      cardImagePath: 'lib/icons/visa.png',
                      cardNumber: 123456789,
                      balance: 1600.32,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(43, 103, 102, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(187, 204, 204, 1),
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total spent in April",
                          style: TextStyle(
                            color: Color.fromRGBO(187, 204, 204, 0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "\$841.90",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 20),
                            SizedBox(
                              height: 25,
                              width: 60,
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(187, 204, 204, 0.3),
                                  border: Border.all(
                                    color: const Color.fromRGBO(
                                        187, 204, 204, 0.3),
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 7),
                                    Image.asset(
                                      'lib/icons/down-arrow.png',
                                      height: 12,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "13%",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Transfer to',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(43, 103, 102, 1),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(187, 204, 204, 1),
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Select',
                              style: TextStyle(
                                color: Color.fromRGBO(187, 204, 204, 0.7),
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-1.png',
                            contactName: 'Jackie'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-2.png',
                            contactName: 'Michael'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-4.png',
                            contactName: 'Martha'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-5.png',
                            contactName: 'Andy'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-6.png',
                            contactName: 'Bob'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-7.png',
                            contactName: 'Cudjoe'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-8.png',
                            contactName: 'Daniella'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-9.png',
                            contactName: 'Claudia'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-10.png',
                            contactName: 'Philip'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-11.png',
                            contactName: 'Elyasu'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-12.png',
                            contactName: 'Richie'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-13.png',
                            contactName: 'Ella'),
                        const SizedBox(width: 10),
                        const AddContact(
                            contactImagePath: 'lib/icons/avatar/avatar-14.png',
                            contactName: 'Priscilla'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Goals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color.fromRGBO(187, 204, 204, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromRGBO(31, 77, 76, 1),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color.fromRGBO(194, 135, 111, 1),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: const Color.fromRGBO(98, 126, 126, 1),
          selectedFontSize: 13,
          unselectedFontSize: 13,
          selectedLabelStyle: const TextStyle(height: 1.5),
          unselectedLabelStyle: const TextStyle(height: 1.5),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Payments',
              icon: Icon(
                Icons.payment_rounded,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Dialogs',
              icon: Icon(
                Icons.message_rounded,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Services',
              icon: Icon(
                Icons.supervisor_account_rounded,
                size: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: 'ATMs',
              icon: Icon(
                Icons.location_on_outlined,
                size: 25,
              ),
            ),
          ],
          currentIndex: currentindex,
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
