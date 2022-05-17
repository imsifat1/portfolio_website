import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/responsive.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  double dpSize = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(dpSize / 2),
                  child: Image.asset(
                    'images/programming_image.jpg',
                    height: dpSize,
                    width: dpSize,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Md Imran Hossain',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mobile App Developer',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            socialMedia(),
            const SizedBox(
              height: 10,
            ),
            professionalExperiance(context),
            const SizedBox(
              height: 20,
            ),
            contactSegment(),
            const SizedBox(
              height: 20,
            ),
            customSwitch(context),
            const SizedBox(
              height: 20,
            ),
            switchContent(context)
          ],
        ),
      ),
    );
  }

  Row socialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.facebook,
              color: const Color.fromARGB(255, 58, 57, 57),
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera,
              color: Color.fromARGB(255, 58, 57, 57),
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.browse_gallery,
              color: Color.fromARGB(255, 58, 57, 57),
            )),
      ],
    );
  }

  professionalExperiance(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: isMobile(context) ?  size.width : size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(children: const [
              Text(
                '2',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Years of Experience',
                style: TextStyle( color: Colors.grey),
              ),
          ],),
          Column(children: const [
              Text(
                '20+',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Completed Projects',
                style: TextStyle( color: Colors.grey),
              ),
          ],),
          Column(children: const [
              Text(
                '10+',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Satisfied Customer',
                style: TextStyle( color: Colors.grey),
              ),
          ],),
        ],
      ),
    );
  }

  contactSegment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
      MaterialButton(onPressed: (){}, color: Colors.cyan, child: Text('Download Cv', style: TextStyle(color: Colors.white),),),
      SizedBox(width: 20,),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5)
        ),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.whatsapp),)),
      SizedBox(width: 5,),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5)
        ),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded),)),
    ],);
  }

  customSwitch(BuildContext context) {
    RxBool switchOn = false.obs;
    return Obx(
      ()=> Container(
            height: 50,
            width: MediaQuery.of(context).size.width *0.3,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3), borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
    
          Center(
            child: GestureDetector(
              onTap: (){
                switchOn.value = false;
                print(switchOn);
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.45 * 0.3,
                  decoration: BoxDecoration(color: switchOn == false ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Skills')),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: (){
                switchOn.value = true;
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.45 * 0.3,
                  decoration: BoxDecoration(color: switchOn == true ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Projects')),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  switchContent(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> imageUrl =[
      'https://www.freecodecamp.org/news/content/images/2021/08/chris-ried-ieic5Tq8YMk-unsplash.jpg',
      'https://www.mooc.org/hubfs/what-computer-programming-jobs-offer-remote-work-jpg.jpeg',
      'https://res.cloudinary.com/grand-canyon-university/image/fetch/w_750,h_564,c_fill,g_faces,q_auto/https://www.gcu.edu/sites/default/files/2020-09/programming.jpg',
      'https://catalyst-ca.net/wp-content/uploads/2021/12/top-programing-languages.jpeg',
      'https://fsa2-assets.imgix.net/assets/laptop-coding-terminal.jpg?auto=compress%2Cformat&crop=focalpoint&domain=fsa2-assets.imgix.net&fit=crop&fp-x=0.5&fp-y=0.5&ixlib=php-3.3.0&w=1280',
      'https://www.simplilearn.com/ice9/free_resources_article_thumb/Six_Old_Programming_Languages_That_Are_Going_Out_of_Style.jpg'
    ];
    return Container(
      width: isMobile(context) ?  size.width : size.width * 0.7,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: isMobile(context) ? 2 : 3, crossAxisSpacing: 10, mainAxisSpacing: 10), 
        itemCount: imageUrl.length,
        itemBuilder: (context, index){
          return ClipRRect(borderRadius: BorderRadius.circular(10), child: CachedNetworkImage(imageUrl: imageUrl[index], fit: BoxFit.cover,));
        }),
    );
  }
}
