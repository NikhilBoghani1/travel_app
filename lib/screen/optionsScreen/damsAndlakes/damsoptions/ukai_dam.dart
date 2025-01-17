import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UkaiDam extends StatefulWidget {
  const UkaiDam({super.key});

  @override
  State<UkaiDam> createState() => _UkaiDamState();
}
FirebaseFirestore _firestore = FirebaseFirestore.instance;
class _UkaiDamState extends State<UkaiDam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.blue,
        title: Text('Ukai Dam',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder(
          stream: _firestore
              .collection('dams and lake')
              .doc('ukai dam')
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
