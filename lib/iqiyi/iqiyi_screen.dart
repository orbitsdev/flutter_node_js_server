import 'package:chatapp/data/sample/tabs.dart';
import 'package:chatapp/helpers/asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class IqiyiScreen extends StatefulWidget {
  const IqiyiScreen({Key? key}) : super(key: key);

  @override
  State<IqiyiScreen> createState() => _IqiyiScreenState();
}

class _IqiyiScreenState extends State<IqiyiScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState

    tabController = TabController(
      initialIndex: 0,
      length: sampleTab.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//     return Scaffold(
//   body: DefaultTabController(
//     length: 2, // Adjust the number of tabs as needed
//     child: NestedScrollView( // Handle nested scrolling if necessary
//       headerSliverBuilder: (context, innerBoxIsScrolled) => [
//         SliverAppBar(
//           backgroundColor: Colors.black,
//           pinned: true,
//           expandedHeight: 140,
//           flexibleSpace: FlexibleSpaceBar(
//             stretchModes: <StretchMode>[
//               StretchMode.zoomBackground,
//               StretchMode.fadeTitle,
//               StretchMode.blurBackground,
//             ],
//             centerTitle: true,
//             title: Container(),
//             background: Image.asset(
//               AssetV1.imagePath('solo1.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           bottom: TabBar(

//             isScrollable: true,  // Enable horizontal scrolling for many tabs
//             controller: tabController, // Link tab bar and controller
//             indicator: const UnderlineTabIndicator( // Remove underline
//               borderSide: BorderSide.none,
//             ),
//             indicatorSize: TabBarIndicatorSize.label, // Indicator covers only label
//             labelColor: Colors.white, // Color for selected tab label
//             unselectedLabelColor: Colors.white.withOpacity(0.70 ), // Color for unselected tab label

//             labelStyle: TextStyle(fontWeight: FontWeight.bold),
//             unselectedLabelStyle: TextStyle(color: Colors.grey.withOpacity(0.8)), //

//             tabs: sampleTab.map((e) => Tab(child: Text('${e}'))).toList(),
//           ),
//         ),
//       ],
//       body: TabBarView(
//         controller: tabController,
//         children: [
//           ...sampleTab.map((e) => Tab(child: Text('${e}')))
//         ],
//       ),
//     ),
//   ),
// );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   pinned: true,
          //   title: Container(
          //     child: Column(
          //       children: [
          //         Container(
          //           color: Colors.red,
          //           height: 50,),
          //         Container(
          //           color: Colors.yellow,
          //           height: 50,),
          //       ],
          //     ),
          //   ),
          //   floating: true,
          //   toolbarHeight: 80,
          //   expandedHeight: 140,
          //   stretch: false,
          //   backgroundColor: Colors.black,
          //   flexibleSpace: FlexibleSpaceBar(
          //     stretchModes: <StretchMode>[
          //       StretchMode.zoomBackground,
          //       StretchMode.fadeTitle,
          //       StretchMode.blurBackground,
          //     ],
          //     title: Container(
          //       color: Colors.transparent,
          //     ),
          //     background: Image.asset(
          //       AssetV1.imagePath('bg.jpg'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),

          // ),

          SliverToBoxAdapter(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetV1.imagePath('bg.jpg')),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'iQIYI',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00CF32)),
                        ),
                        Gap(8),
                        Flexible(
                          child: Container(
                            height: 40,
                            child: TextField(
                              
                              decoration: InputDecoration(
                              
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.16),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8)),
                                    
                                prefixIcon: Icon(
                                    Icons.search,
                                  ),
                              ),
                            ),
                          ),
                        ),
                                                Gap(8),

                        Container(
                          constraints: BoxConstraints(minWidth: 100),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color(0xffF3BF85),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text('VIP'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
