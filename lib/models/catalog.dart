class Item {
  final dynamic id;
  final dynamic name;
  final dynamic desc;
  final dynamic price;
  final dynamic color;
  final dynamic image;

  // ignore: sort_constructors_first
  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  Map<String, dynamic> toMap(Item item) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = item.id;
    data['name '] = item.name;
    return data;
  }

  // ignore: sort_constructors_first
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class Models {
// ignore: always_specify_types
  static final products = [
    Item(
        id: 1,
        name: 'iPhone 12 Pro',
        desc: 'Apple iPhone 12th generation',
        price: 999,
        color: '#33505a',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc')
  ];
}
