import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../utils/constant/constat_links.dart';

List<String> images = [
  ticker,
  fogma,
  gorela,
];

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return CustomContainer(
                  index: images.length,
                  image: images[index],

                );
              },
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Best Seller",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    Image.asset(book,width: 150,height: 150),
                    const Text("Harry Potter\nand the Goblet of Fire",style: TextStyle(color: Colors.white)),

                  ],
                ),
                Row(children: [
                  Image.asset(book1,width: 150,height: 150),
                  Text("The Jungle Book\n",style: TextStyle(color: Colors.white),)
                ]),
                Row(
                  children: [
                    Row(
                      children: [ Image.asset(ticker,width: 150,height: 150,),
                        Text("The Jungle Book\n",style: TextStyle(color: Colors.white),)],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            kImageLogo,
            width: 100,
            height: 150,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    Key? key,required int index,
    required String image,
  }) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[0]),
              fit: BoxFit.fill,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
