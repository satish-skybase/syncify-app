import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreencontroller extends GetxController {
  var titleEditingController = TextEditingController().obs;
  var messageEditingController = TextEditingController().obs;
  var updatedDateController = TextEditingController().obs;
  var databaseReference = FirebaseDatabase.instance.ref();
  var titleValue = "".obs;

  var focusNode = FocusNode();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  dataChange(String dataValue) async {
    if (titleValue.value.length > 2) {
      if (titleEditingController.value.text == titleValue.value) {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () {
          var databaseReference = FirebaseDatabase.instance.ref(titleValue.value);
          databaseReference.update({
            "message": messageEditingController.value.text,
            "last_updated": DateTime.now().toString()
          });
        });
      } else {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 1500), () {
          Get.snackbar(
            'Title changed',
            'Title changed from ${titleValue.value} to ${titleEditingController.value.text}. Please click sync first and then type message.',
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.red,
            colorText: Colors.white,
            borderRadius: 10,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shouldIconPulse: true,
            isDismissible: true,
          );
        });
      }
    } else {
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(seconds: 1), () {
        Get.snackbar(
          'Title Error',
          'Title is not set',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 2),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shouldIconPulse: true,
          isDismissible: true,
        );
      });
    }
  }

  getDetail() {
    // print("GetDetail method");
    // print(titleValue.value);

    if (titleValue.value.length > 2) {
      databaseReference.child(titleValue.value).onValue.listen((event) {
        DataSnapshot snapshot = event.snapshot;
        if (!snapshot.exists) {
          Get.snackbar(
            'New Title creation',
            'Title not present. Creating new title',
            snackPosition: SnackPosition.TOP,
            duration: const Duration(seconds: 1),
            backgroundColor: Colors.green,
            colorText: Colors.white,
            borderRadius: 10,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shouldIconPulse: true,
            isDismissible: true,
          );
          databaseReference.child(titleValue.value).set({
            "message": messageEditingController.value.text,
            "last_updated": DateTime.now().toString()
          });
        } else {
          messageEditingController.value.text = snapshot.child('message').value.toString();
          updatedDateController.value.text = snapshot.child('last_updated').value.toString();

          messageEditingController.value.selection = TextSelection.fromPosition(
              TextPosition(offset: messageEditingController.value.text.length));
        }
      });
    } else {
      Get.snackbar(
        'Title Error',
        'Title should be more than 3 letter',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
        colorText: Colors.white,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shouldIconPulse: true,
        isDismissible: true,
      );
    }
  }
}
