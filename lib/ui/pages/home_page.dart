// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:airplane/ui/widget/destination_card.dart';
import 'package:airplane/ui/widget/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: 'Lake Ciliwung',
                city: 'Tangerang',
                imageURL: 'assets/image_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'White Houses',
                city: 'Spain',
                imageURL: 'assets/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                title: 'Hill Heyo',
                city: 'Monaco',
                imageURL: 'assets/image_destination3.png',
                rating: 4.8,
              ),
              DestinationCard(
                title: 'Menarra',
                city: 'Japan',
                imageURL: 'assets/image_destination4.png',
                rating: 5.0,
              ),
              DestinationCard(
                title: 'Payung Teduh',
                city: 'Singapore',
                imageURL: 'assets/image_destination5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageURL: 'assets/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageURL: 'assets/image_destination7.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageURL: 'assets/image_destination8.png',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageURL: 'assets/image_destination9.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Hili Hey',
              city: 'Monaco',
              imageURL: 'assets/image_destination10.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
