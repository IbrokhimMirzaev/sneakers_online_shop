import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bootcamp/utils/colors.dart';
import 'package:flutter_bootcamp/utils/icons.dart';
import 'model/container_item.dart';
import 'model/fake_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyItem> fakeData = FakeData.getSomeData();
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: MyColors.back_color,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: MyColors.back_color,
        actions: [
          const SizedBox(width: 15),
          const Icon(Icons.menu, size: 40, color: Colors.black),
          const SizedBox(width: 15),
          Expanded(
            child: Center(
              child: TextField(
                cursorColor: Colors.brown.shade200,
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search,
                      size: 28, color: Colors.brown.shade500),
                  hintText: "Search Product",
                  hintStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w300),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown.shade500),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        color: MyColors.back_color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Sneakers",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
                Row(
                  children: const [
                    Icon(
                      Icons.play_arrow,
                      size: 35,
                    ),
                    Icon(
                      Icons.person,
                      size: 35,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text("25 products found"),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 13,
                crossAxisSpacing: 13,
                childAspectRatio: 0.65,
                children: List.generate(
                  fakeData.length,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              onPressed: () {
                                setState(() {
                                  isLiked = !isLiked;
                                });
                              },
                              icon: !isLiked
                                  ? const Icon(
                                      Icons.favorite_border,
                                      size: 25,
                                    )
                                  : const Icon(
                                      Icons.favorite,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                            ),
                          ],
                        ),
                        Expanded(child: Image.asset(fakeData[index].imagePath)),
                        const SizedBox(height: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(fakeData[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18)),
                              const SizedBox(height: 12),
                              Text(
                                fakeData[index].aboutInfo,
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 13),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "\$${fakeData[index].price}",
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
