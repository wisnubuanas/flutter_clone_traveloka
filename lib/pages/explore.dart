import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'Explore Tokyo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: PageView(scrollDirection: Axis.horizontal, children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('images/akihabara.jpg'),
                        fit: BoxFit.cover)),
                // margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue.shade800,
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('images/akiba.png'),
                        fit: BoxFit.cover)),
                // margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              ),
            ]),
          ),
          ListTile(
            title: Text(
              'Explore Seoul',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 150,
            width: 300,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue,
                            Colors.blue.shade800,
                          ]),
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage('images/nightlife-in-seoul.jpg'),
                          fit: BoxFit.cover)),
                  // margin: EdgeInsets.only(left: 10.0),
                  height: 150.0,
                  width: 300.0,
                  child: null,
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue,
                            Colors.blue.shade800,
                          ]),
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage('images/itzy.jpeg'),
                          fit: BoxFit.cover)),
                  // margin: EdgeInsets.only(left: 10.0),
                  height: 150.0,
                  width: 300.0,
                  child: null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
