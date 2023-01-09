import 'package:flutter/material.dart';

class Simpan extends StatefulWidget {
  const Simpan({super.key});

  @override
  State<Simpan> createState() => _SimpanState();
}

class _SimpanState extends State<Simpan> {
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
                        hintText:
                            "Cari tiket pesawat untuk berkeliling Indonesia",
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
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Icon(
              Icons.cancel_outlined,
              color: Colors.red,
              size: 50,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Belum ada item yang anda simpan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
