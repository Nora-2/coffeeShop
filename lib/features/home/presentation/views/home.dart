
import 'package:coffe/core/services/theme/text_styles.dart';
import 'package:coffe/details.dart';
import 'package:coffe/res/resorces_list.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
    static String id = 'home';
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar :AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
          flexibleSpace: Container(
      decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
             
        gradient: LinearGradient(
begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          colors: <Color>[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
      ),),
        centerTitle: true,
         title: GradientText('Home',style: AppTextStyles.nunitoSansBold20, colors:const [Colors.white,Colors.white]),
         
        
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 25, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // customDrawer(),
            const SizedBox(
              height: 20,
            ),
            GradientText('Find the best',style: AppTextStyles.nunitoSansBold30, colors: const[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
            const SizedBox(
              height: 5,
            ),
            GradientText('Coffee for you',style: AppTextStyles.nunitoSansBold24.copyWith(fontSize: 30), colors:const [Color(0xffCB8A58),Color.fromARGB(255, 81, 29, 8),Color(0xffCB8A58,),]),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(.1),
              ),
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.coffee,
                      color: Colors.black.withOpacity(.3),
                    ),
                    border: InputBorder.none,
                    hintText: "Find Your Coffee...",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(.3),
                      fontSize: 12,
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 30,
                child: ListView.builder(
                  addRepaintBoundaries:false,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GradientText( names[index],style: TextStyle(
                              color: category[index]
                                  ? Colors.brown
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17) , colors: category[index]? const[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]:[Colors.black,Colors.black]),
         
                       
                      ),
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Details(index),

                                  ));
                            },
                            child: Card(
                              elevation: 2,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              margin: const EdgeInsets.only(right: 20),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: 155,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: SizedBox(
                                        height: 120,
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                                child: Image(
                                                  image: images[index],
                                                  fit: BoxFit.cover,
                                                )),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                height: 25,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(.7),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    const Icon(
                                                      Icons.star,
                                                      color: Colors.brown,
                                                      size: 14,
                                                    ),
                                                    Text(
                                                      ratting[index].toString(),
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(names[index],
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(with_[index],
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 15,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("\$ ",
                                              style: TextStyle(
                                                  color: Colors.brown,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Text(prices[index],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     GradientText("Special for you",style: AppTextStyles.nunitoSansBold18, colors: const[Color(0xffCB8A58),Color(0xff562B1A),Color(0xffCB8A58,)]),
         
                    const SizedBox(
                      height: 20,
                    ),
                    specialCard(images[5],1),
                    const SizedBox(
                      height: 20,
                    ),
                    specialCard(images[6],2),
                    const SizedBox(
                      height: 20,
                    ),
                    specialCard(images[7],3),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget circleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleIcon(),
        circleIcon(),
      ],
    );
  }

  Widget circleIcon() {
    return Icon(
      Icons.circle,
      color: Colors.white.withOpacity(.5),
      size: 10,
    );
  }

  Widget customDrawer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          elevation: 20,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [circleRow(), circleRow()],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const FlutterLogo(
              size: 35,
            ),
          ),
        ),
      ],
    );
  }

  Widget specialCard(AssetImage asset, int index) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: double.infinity,
                width: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(image: asset, fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  "5 Coffee Beans You\nMust try!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                 Text(with_[index],
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(.5),
                                          fontSize: 15,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row( crossAxisAlignment: CrossAxisAlignment.start,
                                       mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                      children: [
                                        Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    const Icon(
                                                      Icons.star,
                                                      color: Colors.brown,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      ratting[index].toString(),
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                            const    SizedBox(width:20,),
                                        const Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("\$ ",
                                              style: TextStyle(
                                                  color: Colors.brown,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Text(prices[index],
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
