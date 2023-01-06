class VersionsModel {
  String? version;
  int? verses;

  VersionsModel({this.version, this.verses});

  VersionsModel.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    verses = json['verses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['verses'] = this.verses;
    return data;
  }
}
