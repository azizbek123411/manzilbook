// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/pages/main_pages/place_page.dart';
import 'package:manzilbook/view/theme/theme_provider.dart';
import 'package:manzilbook/view/widgets/card_widgets/newxt_order_card.dart';
import 'package:manzilbook/view/widgets/home_widgets/appbar.dart';
import 'package:manzilbook/view/widgets/booking_widgets/booking_card.dart';
import 'package:manzilbook/view/widgets/app_widgets/label_row.dart';
import 'package:manzilbook/view/widgets/home_widgets/place_circle.dart';
import 'package:manzilbook/view/widgets/home_widgets/upper_textfield.dart';

import '../../widgets/home_widgets/my_drawer.dart';

class HomePage extends ConsumerStatefulWidget {
  static const String routeName = 'homepage';
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {

    final theme=Theme.of(context);
    final h = MediaQuery.of(context).size.height;
    return Scaffold(

drawer: MyDrawer(theme: theme, h: h),

      backgroundColor: 
      Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h * 0.065),
        child: MyAppBar(),
      ),
   
      body: Padding(
        padding: Dis.only(lr: 8, tb: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UpperTextfield(),
              SizedBox(
                height: h*.01,
              ),
              SizedBox(
                height: h*.14,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return PlaceCircle(
                        icon: HugeIcon(
                            icon: HugeIcons.strokeRoundedStreetFood,
                            color: Colors.white),
                        text: 'Dine out',
                      );
                    }),
              ),
              SizedBox(
                height: h*.01,
              ),
              NextOrderCard(),
              SizedBox(
                height: h*.02,
              ),
              LabelRow(label: 'Beauty procedures'),
              SizedBox(
                height: h*.01,
              ),
              SizedBox(
                height: h * 0.31,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return BookingCard(
                        category: 'Dentistry',
                        distance: 2.5,
                        placeName: 'Dolce',
                        rating: 4.8,
                        reviewCount: 120,
                        onTap: () {
                          animateBottomTop(PlacePage(), context);
                        },
                      );
                    }),
              ),
              SizedBox(
                height: h*.02,
              ),
              LabelRow(label: 'Beauty procedures'),
              SizedBox(
                height: h * .01,
              ),
              SizedBox(
                height: h * 0.31,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return BookingCard(
                        category: 'Dentistry',
                        distance: 2.5,
                        placeName: 'Dolce',
                        rating: 4.8,
                        reviewCount: 120,
                        onTap: () {
                          animateBottomTop(PlacePage(), context);
                        },
                      );
                    }),
              ),
              SizedBox(
                height: h * .02,
              ),
              LabelRow(label: 'Beauty procedures'),
              SizedBox(
                height: h * .01,
              ),
              SizedBox(
                height: h * 0.31,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return BookingCard(
                        category: 'Dentistry',
                        distance: 2.5,
                        placeName: 'Dolce',
                        rating: 4.8,
                        reviewCount: 120,
                        onTap: () {
                          animateBottomTop(PlacePage(), context);
                        },
                      );
                    }),
              ),
              SizedBox(
                height: h * .02,
              ),
              LabelRow(label: 'Beauty procedures'),
              SizedBox(
                height: h * .01,
              ),
              SizedBox(
                height: h * 0.31,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return BookingCard(
                        category: 'Dentistry',
                        distance: 2.5,
                        placeName: 'Dolce',
                        rating: 4.8,
                        reviewCount: 120,
                        onTap: () {
                          animateBottomTop(PlacePage(), context);
                        },
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


