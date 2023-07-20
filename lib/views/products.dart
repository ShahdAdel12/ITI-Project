import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DevicesList extends StatefulWidget {
  const DevicesList({super.key});

  @override
  State<DevicesList> createState() => _DevicesListState();
}

class _DevicesListState extends State<DevicesList> {
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference devicesDoc= FirebaseFirestore.instance.collection('Devices');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       body: FutureBuilder<QuerySnapshot<Object?>>(
      future: devicesDoc.get(),
      builder:
          (BuildContext context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && snapshot.data == null) {
          return Text("Document does not exist");
        }
        print(snapshot.connectionState.toString());
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (BuildContext context, int index) {
          return Text("Brand is : ${snapshot.data!.docs[index]['Brand']} , Name is :${snapshot.data!.docs[index]['Name']}, Price is : ${snapshot.data!.docs[index]['Price']}");

          },
          );
        }

        return Text("loading");
      },
    )




    );
  }
}