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
        title: Text("Traveloka"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: ListView(
        children: [
          Akun(),
          Divider(),
          MenuUtama(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  const Akun({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://www.valuewalk.com/wp-content/uploads/2019/04/Mark-Zuckerberg.jpg"),
              )),
        ),
        title: Text(
          "Mark Zuckerberg",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.album,
                  // color: Colors.black,
                ),
                label: Text(
                  "300 Point",
                  // selectionColor: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                )),
          ],
        ),
      ),
    );
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
    colorBox: Colors.blue.shade200,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue,
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
    title: 'Tiket Kereta Api',
    icon: Icons.train,
    colorBox: Colors.orange,
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
    icon: Icons.blur_on,
    colorBox: Colors.grey,
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
