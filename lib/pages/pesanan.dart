import 'package:flutter/material.dart';

class Pesanan extends StatefulWidget {
  const Pesanan({super.key});

  @override
  State<Pesanan> createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
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
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:
                            "Temukan inspirasi untuk petualangan anda berikutnya",
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
                Icon(
                  Icons.library_books_sharp,
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
                "Anda belum melakukan pesanan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
