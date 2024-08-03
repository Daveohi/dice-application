import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dice_controller.dart';

class DiceView extends StatelessWidget {
  final DiceController controller = Get.put(DiceController());

  DiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dice App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Image.asset(
                  controller.currentDice.value.imagePath,
                  width: 200,
                  height: 200,
                )),
            const SizedBox(height: 20),
            Obx(() => Text(
                  'Current Number: ${controller.currentDice.value.value}',
                  style: const TextStyle(fontSize: 24),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.rollDice,
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Colors.black),
              child: const Text('Roll Dice'),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  'Roll Count: ${controller.rollCount.value}',
                  style: const TextStyle(fontSize: 18),
                )),
            const SizedBox(height: 10),
            Obx(() => Text(
                  'Total Sum: ${controller.totalSum.value}',
                  style: const TextStyle(fontSize: 18),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.resetDice,
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Colors.black),
              child: const Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
