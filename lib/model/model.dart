class Model1 {
  String? imgurl;
  String? catName;

  Model1({this.imgurl, this.catName});
  static List<Model1> getImg() {
    return [
      Model1(
        imgurl: "assets/images/1.jpg",
      ),
      Model1(imgurl: "assets/images/2.jpg"),
      Model1(imgurl: "assets/images/3.jpg"),
      Model1(imgurl: "assets/images/4.jpg"),
      Model1(imgurl: "assets/images/5.jpg"),
      Model1(imgurl: "assets/images/6.jpg"),
    ];
  }

  static List<Model1> getCatagorie() {
    return [
      Model1(imgurl: "assets/images/c1.jpg", catName: "Foundation"),
      Model1(imgurl: "assets/images/c2.jpg", catName: "Lipstick"),
      Model1(imgurl: "assets/images/c3.jpg", catName: "EyeShadow"),
      Model1(imgurl: "assets/images/c4.jpg", catName: "Mascara"),
    ];
  }
}
