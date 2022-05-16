import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: const HomePage()));
}
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/programming_image.jpg',fit: BoxFit.cover, height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
                Positioned(top: MediaQuery.of(context).size.height, child: Text('MD IMRAN HOSSAIN', style: TextStyle(fontSize: 25, color: Colors.white),),),
                Text('Mobile App Developer', style: TextStyle(fontSize: 20, color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(30), child: Text('Pour moi, la photographie représente lemoyen de matérialiser nos souvenirs et nos émotions vécues', style: TextStyle(fontSize: 25,),),),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}