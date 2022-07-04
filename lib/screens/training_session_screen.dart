import 'package:flutter/material.dart';

class TrainingSessionScreen extends StatefulWidget {
  const TrainingSessionScreen({Key? key}) : super(key: key);

  static const routeName = '/training-session';

  @override
  State<TrainingSessionScreen> createState() => _TrainingSessionScreenState();
}

class _TrainingSessionScreenState extends State<TrainingSessionScreen> {

  void onChangedSlider(double number) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                const Text('title session'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.ownsport.fr/blog/wp-content/uploads/2018/04/fitness.jpeg'),
                  fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Slider(
                      min: 0.00,
                      max: 15.00,
                      value: 7.0,
                      inactiveColor: Colors.transparent,
                      activeColor: Colors.green,
                      onChanged: onChangedSlider,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  Text('Adama'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15,),
                  Icon(Icons.search),
                  Text('Adama'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.15,),
                  Icon(Icons.search),
                  Text('Adama'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 10.0, right: 10.0, bottom: 4.0),
              child: Container(
                height: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const Text('title session', style: TextStyle(fontSize: 18, color: Colors.white),),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                    Container(
                      width: 70,
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('NEXT'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 79,
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: const [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed leo odio. Etiam gravida iaculis mauris eu sagittis. Donec vel ullamcorper tortor. Ut commodo pretium arcu, et lobortis leo semper at.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.2,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 49,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('07 : 30', style: TextStyle(color: Colors.yellowAccent, fontSize: 24),),
                    const Text('/ 15 : 00', style: TextStyle(color: Colors.grey, fontSize: 24),),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3,),
                    Container(
                      width: 80,
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
