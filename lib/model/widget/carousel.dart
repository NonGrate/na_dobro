class CarouselItem {
  final int id;
  final String image;

  CarouselItem({this.id, this.image});

  @override
  String toString() {
    return 'CarouselItem{id: $id, image: $image}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CarouselItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}