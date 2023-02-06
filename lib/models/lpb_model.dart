class AllDetail {
  final String image, name, desc, restaurant, hotel, location;

  AllDetail(
      {required this.name,
      required this.image,
      required this.desc,
      required this.restaurant,
      required this.hotel,
      required this.location});

  List<AllDetail> alldetail = [
    // LPB have 3 
    AllDetail(
      image: 'assets/images/Tv3.jpg',
      name: 'Tatkuangsi',
      desc: 'In LPB province',
      restaurant: 'Have is nearing',
      hotel: 'Have a two hotel',
      location: 'map',
    ),
    // VT have 3

    // 
  ];
}
