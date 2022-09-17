import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {

  final PageController _pageController = PageController();
  var selectedIndex = 0;

  var tabData = [
    "All",
    "Birthday",
    "Puja",
    "Eid",
  ];

  var pageList = [
    Container(
      child: Text("Tab 1 - All"),
    ),
    Container(
      child: Text("Tab 2 - BD"),
    ),
    Container(
      child: Text("Tab 3 - Puja"),
    ),
    Container(
      child: Text("Tab 4 - Eid"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 30,
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: tabData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        print(index);
                        setState(() {
                          selectedIndex = index;
                        });
                        _pageController.animateToPage(index,curve: Curves.easeIn,duration: Duration(milliseconds: 200));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Text(tabData[index]),
                            Container(
                              height: 10,
                              width: 60,
                              color: selectedIndex == index ? Colors.yellow : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: pageList,
            ),
          ),

        ],
      ),
    );
  }
}