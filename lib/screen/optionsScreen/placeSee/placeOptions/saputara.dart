import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Saputara extends StatefulWidget {
  const Saputara({super.key});

  @override
  State<Saputara> createState() => _SaputaraState();
}
FirebaseFirestore _firestore = FirebaseFirestore.instance;
class _SaputaraState extends State<Saputara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.blue,
        title: Text(
          'Saputara',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder(
          stream: _firestore
              .collection('place to see')
              .doc('saputara')
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
      ),
    );
  }
}
