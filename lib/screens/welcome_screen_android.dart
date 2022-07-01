import 'package:fitness_app/screens/my_space_android.dart';
import 'package:flutter/material.dart';


class WelcomeScreenAndroid extends StatelessWidget {
  const WelcomeScreenAndroid({Key? key}) : super(key: key);
  static const routeName = '/welcome-Android';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.green, Colors.white],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 5,
              child: Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('weekly report', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
                    Text('2000 kcal', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),

                  ],
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 16,
              child: Container(
                height: 460,
                width: 380,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://resize2.prod.docfr.doc-media.fr/rcrop/1200,675,center-middle/img/var/doctissimo/storage/images/fr/www/forme/fitness/666046-110-fre-FR/fitness.jpg'),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70,
              right: 5,
              child: Container(
                height: 120,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.favorite_border_outlined, size: 32, color: Colors.green,),
                    Text('87 bpm', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 5,
              child: Container(
                height: 230,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(20), bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.greenAccent,
                            child: Icon(Icons.sports, color: Colors.black, size: 32,),),
                        SizedBox(height: 20),
                        Text('Get started with your Fitness program today', style: TextStyle(fontSize: 32,),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 35,
              child: Container(
                height: 70,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return MySpaceAndroid();
                    }));
                  },
                  child: const Center(
                    child: Text(
                      'Start workout',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
