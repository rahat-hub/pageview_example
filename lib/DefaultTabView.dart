import 'package:flutter/material.dart';
import 'package:pageview_example/widgets/textbox.dart';

class DefaultTabViewExample extends StatefulWidget {
  const DefaultTabViewExample({Key? key}) : super(key: key);

  @override
  State<DefaultTabViewExample> createState() => _DefaultTabViewExampleState();
}

class _DefaultTabViewExampleState extends State<DefaultTabViewExample> {

  var tabData = [
    Text("All"),
    Text("Birthday"),
    Text("Puja"),
    Text("Eid"),
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
    return DefaultTabController(
      length: tabData.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [

            SizedBox(height: 40,),

            // TabBar(
            //   tabs: tabData,
            //   onTap: (value) {
            //     print(value);
            //   },
            //   indicatorSize: TabBarIndicatorSize.label,
            //   indicatorColor: Colors.red,
            //   indicator: UnderlineTabIndicator(
            //     borderSide: BorderSide(color: Color(0xDD613896), width: 8.0),
            //     insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
            //   ),
            //   labelColor: Colors.black,
            //   unselectedLabelColor: Colors.grey,
            // ),
            //
            // SizedBox(height: 40,),
            //
            // Expanded(
            //   child: TabBarView(
            //     children: pageList,
            //   ),
            // ),

            TextBoxConstant.textWidget(
              text: "OKAy",
//              textColor: Colors.yellow
            )

          ],
        ),
      ),
    );
  }
}
