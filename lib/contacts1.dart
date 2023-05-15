import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;

class Contacts {
  String name;
  String imageLink;

  Contacts(this.name, this.imageLink);
}

List<Contacts> contacts() {
  return [
    Contacts("Anne", "images/image6.webp"),
    Contacts("Kate", "images/image7.webp"),
    Contacts("Edward", "images/image2.webp"),
    Contacts("Philip", "images/image1.jpg"),
    Contacts("Jina", "images/image1.jpg"),
    Contacts("Rahmat", "images/image1.jpg"),
    Contacts("Jina", "images/image1.jpg"),
    Contacts("Rahmat", "images/image1.jpg"),
    Contacts("Anne", "images/image6.webp"),
    Contacts("Kate", "images/image7.webp"),
    Contacts("Edward", "images/image2.webp"),
    Contacts("Philip", "images/image1.jpg"),
  ];
}
