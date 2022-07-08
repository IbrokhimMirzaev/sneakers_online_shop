import 'package:flutter/material.dart';
import '../utils/icons.dart';
import 'container_item.dart';

class FakeData {
  static List<MyItem> getSomeData() {
    List<MyItem> myData = [];

    myData.add(MyItem(imagePath: MyIcons.max, name: "Nike", price: "96", aboutInfo: "Air Force 1 Jester XX Black Sonic Yellow..."));
    myData.add(MyItem(imagePath: MyIcons.skecher3, name: "Skechers", price: "215", aboutInfo: "Run Star Hike Three Color Universe"));
    myData.add(MyItem(imagePath: MyIcons.jordan, name: "Jordan", price: "196", aboutInfo: "Air Jordan 1 Retro High Obsidian UNC..."));
    myData.add(MyItem(imagePath: MyIcons.brown, name: "Converse", price: "85.5", aboutInfo: "Air Force 1 Shadow Beige Pale Ivory"));
    myData.add(MyItem(imagePath: MyIcons.skecher2, name: "Skechers", price: "96", aboutInfo: "Air Force 1 Jester XX Black Sonic Yellow..."));
    myData.add(MyItem(imagePath: MyIcons.sneaker, name: "Nike", price: "185", aboutInfo: "Air Force 1 Shadow Beige Pale Ivory"));
    myData.add(MyItem(imagePath: MyIcons.max, name: "AirMax", price: "96", aboutInfo: "Air Force 1 Jester XX Black Sonic Yellow..."));
    myData.add(MyItem(imagePath: MyIcons.skecher3, name: "Adidas", price: "125", aboutInfo: "Air Force 1 Shadow Beige Pale Ivory"));

    return myData;
  }
}
