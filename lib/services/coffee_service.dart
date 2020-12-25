import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/constant.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeService extends ChangeNotifier {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  List<Coffee> coffees = [];

  Future<List<Coffee>> findAll() {
    return firebaseFirestore
        .collection(Constant.collectionPath)
        .get()
        .then((querySnapshot) {
      coffees = querySnapshot.docs.map((doc) {
        return Coffee.fromJson(doc.data(),doc.id);
      }).toList();

      return coffees;
    });
  }

  Future<Coffee> findById(String id) async {
    var response= await firebaseFirestore.collection(Constant.collectionPath).doc(id).get();
    Coffee currentCoffee=Coffee.fromJson(response.data(), id);

    return currentCoffee;

  }

  Future<void> add(Coffee coffee) async {
    var coffeeRef = firebaseFirestore.collection(Constant.collectionPath).doc();
    var response = await coffeeRef.set(coffee.toJson());
  }

}
