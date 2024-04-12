import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function() onPress;
  final Function(String?) onChange;
  const AddTask({super.key, required this.onPress, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                cursorColor: const Color(0xff18122B),
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff18122B))),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff18122B))),
                    prefixIcon: Icon(
                      Icons.edit,
                      color: Color(0xff18122B),
                    )),
                onChanged: onChange,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xff18122B),
                  ),
                ),
                onPressed: onPress,
                child: const Text('Enter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
