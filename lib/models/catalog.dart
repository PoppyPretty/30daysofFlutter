class Item {
  late final String id;
  late final String name;
  late final String desc;
  late final String color;
  late final String image;
  late final num price;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.image,
    required this.price,
  });

  final products = [
    Item(
        id: "Codepur001",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        color: "#33505a",
        image: "https://images.unsplash.com/photo-1589492477829-5e65395b66cc",
        price: 999)
  ];
}
