import 'package:flutter/material.dart';
import 'package:nepal_app/widgets/AppButtons.dart';
import 'package:nepal_app/widgets/respnsive_button.dart';
import 'package:nepal_app/widgets/smalltext.dart';
import 'package:nepal_app/widgets/text.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.66,
                        fit: BoxFit.cover,
                        image: AssetImage('images/3479523.jpg'))),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 220,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: MediaQuery.of(context).size.width,
                height: 520,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: 'Mt Everest',
                          size: 25,
                          color: Colors.black54,
                        ),
                        AppLargeText(
                          text: '8848 m',
                          color: Colors.grey,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.purpleAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(text: ' Solukhumbu District'),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) {
                          return Icon(Icons.star,
                              color: index < gottenStars
                                  ? Colors.amber
                                  : Colors.grey);
                        })),
                        SizedBox(
                          width: 7,
                        ),
                        AppText(
                          text: '3.0',
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AppLargeText(
                      text: 'People',
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: 'Number of people in your group',
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 40,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              borderColor: selectedIndex == index
                                  ? const Color.fromARGB(255, 2, 35, 61)
                                  : Colors.grey,
                              backgroundColor: selectedIndex == index
                                  ? const Color.fromARGB(255, 2, 35, 61)
                                  : Colors.grey,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: 'Description',
                      color: Colors.black54,
                      size: 20,
                    ),
                    AppText(
                        text:
                            'From this tutorial we build a flutter cubit / bloc state management app. We will build it step by step. We will also build the ui and do api request'),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 20,
                child: Row(
                  
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      child: TextButton(
                        style: const ButtonStyle(
                          
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        child: AppButtons(
                          size: 60,
                          color: Colors.purple,
                          backgroundColor:
                              click == false ? Colors.amber : Colors.white,
                          borderColor:
                              click == false ? Colors.white : Colors.purpleAccent,
                          isIcon: true,
                          icon: Icons.favorite_border,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ResponsiveButton(isResponsive: true),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
