import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: CarouselSlider.builder(
          itemCount: 15,
          itemBuilder: (context, index, realIndex) => Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const FadeInImage(
                    placeholder: NetworkImage(
                      'http://via.placeholder.com/640x360',
                    ),
                    image: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4E03AQGGCrDxUScZbw/profile-displayphoto-shrink_800_800/0/1604006217635?e=1663200000&v=beta&t=BfD7Eq07TJ4P3iG6cM9i1nbC5_UDJbEv44ms1WuUG4U'
                      ,
                      
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width * 0.75,
                height: size.height *0.9,

              ),
          options: CarouselOptions(autoPlay: true)),
    );
  }
}