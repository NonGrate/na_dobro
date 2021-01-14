class ArticleItem {
  final int id;
  final int color;
  final String author;
  final String title;

  ArticleItem({this.id, this.color, this.title, this.author});

  @override
  String toString() {
    return 'ArticleItem{id: $id, color: $color, title: $title, author: $author}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ArticleItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

enum SupportState {
  IN_PROGRESS,
  FULFILLED,
  SUCCESSFUL,
  FAILED,
}