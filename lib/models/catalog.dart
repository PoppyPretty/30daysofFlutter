class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "https://images.unsplash.com/photo-1589492477829-5e65395b66cc")
  ];
}

class Item {
  late final int id;
  late final String name;
  late final String desc;
  late final num price;
  late final String color;
  late final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
