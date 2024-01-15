class Pdf {
  bool? isAvailable;
  String? downloadLink;

  Pdf({this.isAvailable, this.downloadLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
        isAvailable: json['isAvailable'] as bool?,
        downloadLink: json['downloadLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'isAvailable': isAvailable,
        'downloadLink': downloadLink,
      };
}
