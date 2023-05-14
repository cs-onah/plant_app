import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_widgets/my_widgets.dart';
import 'package:plant_app/widgets/image_bg.dart';
import 'package:plant_app/main.dart';
import 'package:plant_app/widgets/plant_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/svgs/search.svg",
            height: 26,
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 44, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find the perfect\nplant for your home",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.tune),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TabBarDelegate(),
              ),
            ];
          },
          body: ListView(
            children: const [
              SlideOpacityTransition(
                direction: SlideDirection.leftToRight,
                child: PlantTile(
                  title: "Rubber Plant",
                  description:
                      "Easy to care for. Grows\nwell in any\nenvironment.",
                  price: "\$24.79",
                  imagePath: "assets/images/plant_1.png",
                ),
              ),
              SlideOpacityTransition(
                direction: SlideDirection.rightToLeft,
                child: PlantTile(
                  title: "Harworthia",
                  description:
                      "Perfect for beginners.\nGrows well in light\nenvironment.",
                  price: "\$18.20",
                  imagePath: "assets/images/plant_2.png",
                  ltr: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 26, right: 44, top: 10, bottom: 10),
      child: TabBar(
        tabs: const [
          Tab(child: Text("Top picks")),
          Tab(child: Text("Indoors")),
          Tab(child: Text("Outdoors")),
          Tab(child: Text("Sale")),
        ],
        splashBorderRadius: BorderRadius.all(Radius.circular(90)),
        isScrollable: true,
        labelStyle: Theme.of(context).textTheme.headlineMedium,
        unselectedLabelColor: Color(0xffC3C3C3),
        labelColor: AppColors.textGreen,
        indicatorWeight: 10,
        indicator: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.accentGreen,
        ),
      ),
    );
  }

  @override
  double get maxExtent => 56;

  @override
  double get minExtent => 56;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
