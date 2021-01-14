class ArticleItem {
  final int id;
  final int colorStart;
  final int colorEnd;
  final String author;
  final String title;

  ArticleItem({this.id, this.colorStart, this.colorEnd, this.title, this.author});

  @override
  String toString() {
    return 'ArticleItem{id: $id, colorStart: $colorStart, colorEnd: $colorEnd, title: $title, author: $author}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ArticleItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}