import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final int viewCount = 170344;
  final int commentCount = 92;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          )
        ],
      ),
      body: ListView(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                50,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/12285563/pexels-photo-12285563.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                          Text(
                            "Murat",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
          ),
        ),
        ...List.generate(
            50,
            (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/12285563/pexels-photo-12285563.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: Text(
                        "Kullanıcı",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Image.network(
                      "https://images.pexels.com/photos/12361807/pexels-photo-12361807.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 2,
                      fit: BoxFit.fill,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.amber,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.message_outlined,
                                color: Colors.amber,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send_outlined,
                                color: Colors.amber,
                              ))
                        ],
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.save_alt_outlined,
                            color: Colors.amber,
                          )),
                    ),
                    ListTile(
                      dense: true,
                      title: Text(
                        "$viewCount views",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "$commentCount comments",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      leading: CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/12503572/pexels-photo-12503572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                            hintText: "Yorum Ekleyiniz",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 18,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.handshake,
                                color: Colors.yellow,
                                size: 18,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_outlined,
                                color: Colors.amber,
                                size: 18,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "   1 saat önce\n",
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                ))
      ]),
    );
  }
}
