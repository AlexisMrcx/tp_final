class Note {
  final String title;
  final DateTime dateTime;
  final String content;
  final String picturePath;

  Note({required this.title, required this.dateTime, required this.content, required this.picturePath});



  factory Note.fromJson(Map<String, dynamic> json){
    var history = new Note(
      title: json['title'],
      dateTime: new DateTime.fromMillisecondsSinceEpoch(int.parse(json['date'])),
      content: json['content'],
      picturePath: json['image_path']
      );

      return history;
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['date'] = this.dateTime.millisecondsSinceEpoch.toString();
    data['content'] = this.content;
    data['image_path'] = this.picturePath;

    return data;
  }
}