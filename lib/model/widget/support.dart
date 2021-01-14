class SupportItem {
  final int id;
  final String image;
  final String title;
  final int patrons;
  final int patronsGoal;
  final SupportState state;
  final DateTime endDate;
  final bool isNew;

  SupportItem({this.id, this.image, this.title, this.patrons, this.patronsGoal, this.state, this.endDate, this.isNew});

  @override
  String toString() {
    return 'SupportItem{id: $id, image: $image, title: $title, patrons: $patrons, patronsGoal: $patronsGoal, state: $state, endDate: $endDate, isNew: $isNew}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SupportItem && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

enum SupportState {
  IN_PROGRESS,
  FULFILLED,
  SUCCESSFUL,
  FAILED,
}
