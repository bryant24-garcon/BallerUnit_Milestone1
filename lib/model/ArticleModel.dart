class Source{
  String id;
  String name;

  Source({this.id, this.name});

  factory Source.fromJSON(Map<String, dynamic> json){
    return Source(
      id: json['id'],
      name: json['name']
    );
  }
}



