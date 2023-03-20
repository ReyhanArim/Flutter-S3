import 'package:flutter/material.dart';
import 'package:percobaan1/list_item.dart';
import 'package:percobaan1/model/tourism_place.dart';
import 'package:percobaan1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'detail_screen.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/submarine.jpg'),
    TourismPlace(
        name: 'Titik Nol Nusantara',
        location: 'Kalimantan Timur',
        imageAsset: 'assets/images/ikn.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? doneTourismPlaceList.add(place)
                          : doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
