import 'package:cosmetics_online_store_app_ui/model/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ListScrollWidget extends StatelessWidget {
  final imglist = Model1.getImg();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Transform.rotate(
                angle: -0.3,
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff44444c),
                  size: 30,
                ))),
        Expanded(
          flex: 6,
          child: CarouselSlider.builder(
            itemCount: imglist.length,
            itemBuilder: (context, index, Index) {
              return Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage(imglist[index].imgurl!),
                      fit: BoxFit.cover,
                    )),
              );
            },
            options: CarouselOptions(
              viewportFraction: 0.35,
              aspectRatio: 5.0,
              scrollDirection: Axis.horizontal,
              height: 80,
              autoPlay: true,
              autoPlayCurve: Curves.easeIn,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Transform.rotate(
                angle: 0.3,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xff44444c),
                  size: 30,
                )))
      ],
    );
  }
}
