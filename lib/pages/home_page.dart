import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(top: 25.0),
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
              //
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromRGBO(31, 77, 76, 1),
        ),
        child: SizedBox(
          height: 70,
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
      ),
    );
  }
}
