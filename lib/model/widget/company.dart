class CompanyItem {
  final int id;
  final String title;
  final String image;

  CompanyItem({this.id, this.image, this.title});

  @override
  String toString() {
    return 'CompanyItem{id: $id, title: $title, image: $image}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CompanyItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}