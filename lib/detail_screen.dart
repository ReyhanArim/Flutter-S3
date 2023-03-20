import 'package:flutter/material.dart';
import 'package:percobaan1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('24 Hours'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.currency_bitcoin),
                      Text('10 Bitcoin'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                "Titik Nol Ibu Kota Nusantara atau Titik Nol IKN adalah sebuah monumen yang terletak di kawasan Ibu Kota Nusantara. Monumen ini dibangun pada Februari 2022 yang merupakan awal dari pembangunan Ibu Kota Nusantara dan dimaksudkan untuk menjadi bagian dari Sejarah kebangkitan Indonesia menuju Indonesia Emas 2045",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              'https://wahananews.co/photo/berita/dir082022/berkunjung-ke-titik-nol-nusantara-yang-jadi-destinasi-wisata_8Gh8xnGTy2.jpg'),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
