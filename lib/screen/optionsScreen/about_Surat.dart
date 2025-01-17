import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class About_surat extends StatefulWidget {
  const About_surat({super.key});

  @override
  State<About_surat> createState() => _About_suratState();
}

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class _About_suratState extends State<About_surat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.blue,
        title: Text(
          'About Surat',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StreamBuilder(
        stream: _firestore
            .collection('travel_app')
            .doc('about surat')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(snapshot.data?['image']),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.white,
                    child: Text('${snapshot.data?['info']}',style: TextStyle(fontSize: 15))),

                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.hasError.toString()),
              );
            } else {
              return Center(
                child: Text('No Data'),
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
