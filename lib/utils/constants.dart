// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/dice_model.dart';

final List<DiceModel> diceImages = [
  DiceModel(value: 1, imagePath: 'assets/one.png'),
  DiceModel(value: 2, imagePath: 'assets/two.png'),
  DiceModel(value: 3, imagePath: 'assets/three.png'),
  DiceModel(value: 4, imagePath: 'assets/four.png'),
  DiceModel(value: 5, imagePath: 'assets/five.png'),
  DiceModel(value: 6, imagePath: 'assets/six.png'),
];

void showToast(String message) {
  Get.snackbar(
    'Dice Roll',
    message,
    snackPosition: SnackPosition.TOP,
    colorText: Colors.yellow,
    backgroundColor: Colors.black,
  );
}
