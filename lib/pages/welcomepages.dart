import 'package:flutter/material.dart';
import 'package:nepal_app/pages/nav_pages/maipage.dart';
import 'package:nepal_app/widgets/respnsive_button.dart';
import 'package:nepal_app/widgets/smalltext.dart';
import 'package:nepal_app/widgets/text.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({super.key});

  @override
  State<WelcomePages> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePages> {
  List img = [
    "3479523.jpg",
    "3479687.jpg",
    "3480113.jpg",
  ];

     List text1 = [
    "Home of Mountains",
    "Home of Temples",
    "Birth Place of Gautum Buddha"
  ];

  List text = [
    'There are more than 1310 mountains in Nepal  which are over 5500m/18,090ft to 8848m/29,028ft above sea level. ',
    'Nepal is one of those places in the world whose reputation precedes itself. Safely protected by the girdle of mighty green hills, nepal is a land culturally, religiously and historically sumptuous.',
    'Lord Buddha was born in 623 BC in the sacred area of Lumbini located in the Terai plains of southern Nepal, testified by the inscription on the pillar erected by the Mauryan Emperor Asoka in 249 BC.',
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                 
                image: DecorationImage(
                 opacity: 0.75,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "images/" + img[index],
                  ),
                ),
              ),
              child: Container(
              
                margin: const EdgeInsets.only(top: 130, left : 50,bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Nepal"),
                        AppText(
                          text: text1[index],
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          height: 150,
                          child: AppText(
                            text: text[index],
                                color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage()),
  );
}, 
                          child: Container(
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('See More',style: TextStyle(fontSize: 20,color: Colors.purple[100]),),
                              Icon(Icons.bookmark_outline,size: 30,),
                            ],
                          ),
                        ))
                      ],
                    ),
                       Row(
                      children: List.generate(3, (indexdots) => Container(
                        margin: EdgeInsets.only(left: 5),
                        width: index==indexdots ?35:15,
                        height: 8,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(20),
                          color: index==indexdots ?Colors.red : Colors.red[200],
                        ),
                      ),),
                    )               
                  
                  ],
                ),
              ),
            );
          }),
    );
  }
}
