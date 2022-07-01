import 'package:flutter/material.dart';

class MySpaceAndroid extends StatefulWidget {
  const MySpaceAndroid({Key? key}) : super(key: key);
  static const routeName = '/MySpace-Android';
  @override
  State<MySpaceAndroid> createState() => _MySpaceAndroidState();
}

class _MySpaceAndroidState extends State<MySpaceAndroid> {
  List<String> activities = [
    'Stretching', 'Treadmill', 'Running', 'Jump', 'others',
  ];

  int _selectedIndex = 0;
  void onTap(int index) {
    _selectedIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        elevation: 2,
        onTap: onTap,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 25,
                              backgroundImage: NetworkImage('https://albaouest.com/wp-content/uploads/2021/04/b2ap3_large_totw_network_profile_400.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Good morning,', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                                  Text('Tommy', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                                ],
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 22,
                                backgroundColor: Colors.white,
                                child: const Icon(Icons.notifications, color: Colors.green,)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.32,
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ListTile(
                                    leading: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green, width: 5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.search, color: Colors.green, size: 32,),
                                    ),
                                    title: const Text('200 m'),
                                    subtitle: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: const [
                                            Icon(Icons.play_arrow),
                                            Text('30min'),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Icon(Icons.repeat),
                                            Text('30min'),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            Icon(Icons.person),
                                            Text('30min'),
                                          ],
                                        ),
                                        const CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.play_arrow, color: Colors.yellow,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Workout category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 105,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: activities.length,
                    itemBuilder: (context, index ) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 10.0, bottom: 8.0, right: 10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green, width: 5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.search, color: Colors.green, size: 32,),
                          ),
                          Text(activities[index]),
                        ],
                      ),
                    );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Discover Workout Class', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 120,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage('https://evofitness.ch/wp-content/uploads/2019/01/Crossfit-EVO-Fitness-1200x675.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Muscle Streching', style: TextStyle(fontSize: 18, color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.search, color: Colors.greenAccent,),
                                        Text('Adama', style: TextStyle(color: Colors.white)),
                                        SizedBox(width: 20),
                                        Icon(Icons.search, color: Colors.greenAccent,),
                                        Text('workout', style: TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.search),
                                    ),
                                  ],
                                ),
                                const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.arrow_forward_ios, size: 12, color: Colors.green,)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
