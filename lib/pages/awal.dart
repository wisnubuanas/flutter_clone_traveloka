import 'package:flutter/material.dart';
import 'package:flutter_clone_traveloka/pages/profile.dart';

class Awal extends StatefulWidget {
  const Awal({super.key});

  @override
  State<Awal> createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Traveloka"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Coba pengalaman baru sekarang",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none),
                        // icon: Icon(Icons.notification_add),
                        filled: true,
                        fillColor: Colors.white),
                    // style: Colors.white,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: AppBar(
      //   title: Text("Traveloka"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.more_horiz),
      //     )
      //   ],
      // ),
      body: ListView(
        children: [
          Akun(),
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5, offset: Offset(0, 5)),
        ],

        // Icon(Icons.qr_code_2),
      ),
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 150, top: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.monetization_on_outlined),
                        color: Colors.white,
                      ),
                      Text("Points",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text("5000", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text(
              "|",
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.qr_code_2),
                    color: Colors.white),
                // Icon(Icons)
                Text("Bayar", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );

    // Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 8),
    //   child: ListTile(
    //     leading: Container(
    //       width: 50,
    //       height: 50,
    //       decoration: BoxDecoration(
    //           shape: BoxShape.circle,
    //           image: DecorationImage(
    //             fit: BoxFit.fill,
    //             image: NetworkImage(
    //                 "https://www.valuewalk.com/wp-content/uploads/2019/04/Mark-Zuckerberg.jpg"),
    //           )),
    //     ),
    //     title: Text(
    //       "Mark Zuckerberg",
    //       style: TextStyle(fontWeight: FontWeight.bold),
    //     ),
    //     subtitle: Row(
    //       children: [
    //         ElevatedButton.icon(
    //             onPressed: () {},
    //             icon: Icon(
    //               Icons.album,
    //               // color: Colors.black,
    //             ),
    //             label: Text(
    //               "300 Point",
    //               // selectionColor: Colors.black,
    //             ),
    //             style: ElevatedButton.styleFrom(
    //               primary: Colors.blueAccent,
    //               elevation: 0,
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(6)),
    //             )),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue.shade900,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Aktifitas & Rekreasi',
    icon: Icons.local_play,
    colorBox: Colors.green.shade300,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: "Kuliner",
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange.shade300,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Transportasi Bandara',
    icon: Icons.local_taxi,
    colorBox: Colors.blue.shade300,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green.shade900,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.dashboard_customize_outlined,
    colorBox: Colors.grey.shade300,
    iconColor: Colors.black,
  ),
];

class MenuUtamaItem extends StatelessWidget {
  const MenuUtamaItem(
      {required this.title,
      required this.icon,
      required this.colorBox,
      required this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.only(bottom: 10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}

class MenuTambahan extends StatelessWidget {
  const MenuTambahan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(title: 'Tagihan & Isi Ulang', icon: Icons.receipt),
  MenuTambahanItem(title: 'Pay Later', icon: Icons.payment),
  MenuTambahanItem(title: 'Game', icon: Icons.gamepad),
  MenuTambahanItem(title: 'Bioskop', icon: Icons.movie_filter_outlined),
  MenuTambahanItem(title: 'Spa & Perawatan', icon: Icons.shower_outlined),
  MenuTambahanItem(title: 'Atraksi', icon: Icons.surfing),
  MenuTambahanItem(title: 'Kesehatan', icon: Icons.health_and_safety),
];

class MenuTambahanItem extends StatelessWidget {
  const MenuTambahanItem({required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        children: [
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo Saat Ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.blue.shade800,
                      ]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(left: 8.0),
                height: 150.0,
                width: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(20.0, 20.0),
                                bottomRight: Radius.elliptical(150.0, 150.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                          child: Text(
                            '%',
                            style:
                                TextStyle(fontSize: 24.0, color: Colors.white),
                          ),
                        )),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image:
                        DecorationImage(image: AssetImage('images/promo.jpg'))),
                margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
