class BooksModel {
  Abbrev? abbrev;
  String? author;
  int? chapters;
  String? group;
  String? name;
  String? testament;

  BooksModel(
      {this.abbrev,
      this.author,
      this.chapters,
      this.group,
      this.name,
      this.testament});

  BooksModel.fromJson(json) {
    abbrev =
        json['abbrev'] != null ? Abbrev.fromJson(json['abbrev']) : null;
    author = json['author'];
    chapters = json['chapters'];
    group = json['group'];
    name = json['name'];
    testament = json['testament'];
  }

  Map toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.abbrev != null) {
      data['abbrev'] = this.abbrev!.toJson();
    }
    data['author'] = this.author;
    data['chapters'] = this.chapters;
    data['group'] = this.group;
    data['name'] = this.name;
    data['testament'] = this.testament;
    return data;
  }
}

class Abbrev {
  String? pt;
  String? en;

  Abbrev({this.pt, this.en});

  Abbrev.fromJson(Map<String, dynamic> json) {
    pt = json['pt'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['pt'] = this.pt;
    data['en'] = this.en;
    return data;
  }
}
