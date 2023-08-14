import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nepal_app/widgets/smalltext.dart';
import 'package:nepal_app/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  
  var images = {
  "3479523.jpg":"Mountain",
  "3479687.jpg":"Temple",
  "3480113.jpg":"Bouddha",
   "3479523.jpg":"Mountains",
  "3479687.jpg":"Temples",
  "3480113.jpg":"Stupas",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                ),
                Container(
                  child: Icon(Icons.person),
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: 'Discover')),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(left: 20, right: 0),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blueGrey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'Mountains',
                  ),
                  Tab(
                    text: 'Temples',
                  ),
                  Tab(
                    text: 'Stupas',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 220,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/3479523.jpg'),
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/3479687.jpg'),
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/3480113.jpg'),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              AppLargeText(text: 'Explore More',size: 22,),
              AppText(text: 'See all'),
            ],),
          ),
          SizedBox(height: 35,),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (_,index){
              return Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/'+images.keys.elementAt(index),),
                          ),
                        ),
                      ),
                      
                       SizedBox(height: 5,),
                      AppText(text: images.values.elementAt(index),),
                   
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
