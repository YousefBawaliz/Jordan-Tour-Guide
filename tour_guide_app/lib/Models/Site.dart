// class sites {
//   String title;
//   String description;
//   String siteImage;
//   sites(
//       {required this.title,
//       required this.description,
//       required this.siteImage});
// }

class Sites {
  String description;
  String title;
  String previewimage;
  String siteImage;
  List imageList;
  double latitude;
  double longitude;

  Sites({
    required this.title,
    required this.previewimage,
    required this.siteImage,
    this.latitude = 3,
    this.longitude = 3,
    required this.description,
    required this.imageList,
  });
}
