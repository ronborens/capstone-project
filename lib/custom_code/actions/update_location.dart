// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future updateLocation(
  BuildContext context,
  String uid,
  LatLng location,
) async {
  try {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users.doc(uid).update({
      'location': GeoPoint(location.latitude, location.longitude),
    });
  } on FirebaseException catch (e) {
    return;
  }
  // Add your function code here!
}
