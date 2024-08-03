import 'dart:math';
import 'package:get/get.dart';
import '../models/dice_model.dart';
import '../utils/constants.dart';

class DiceController extends GetxController {
  var currentDice = DiceModel(value: 1, imagePath: 'assets/one.png').obs;
  var rollCount = 0.obs;
  var totalSum = 0.obs;

  void rollDice() {
    if (rollCount.value < 6) {
      int randomNumber = Random().nextInt(6) + 1;
      currentDice.value = diceImages[randomNumber - 1];
      rollCount.value++;
      totalSum.value += randomNumber;

      if (randomNumber % 2 == 0) {
        showToast('An even number is thrown');
      } else {
        showToast('An odd number is thrown');
      }

      if (randomNumber == 6) {
        showToast('A 6 has been thrown');
      }
    } else {
      showToast('You have rolled 6 times. Total sum: ${totalSum.value}');
    }
  }

  void resetDice() {
    currentDice.value = diceImages[0];
    rollCount.value = 0;
    totalSum.value = 0;
  }
}
