import 'package:flutter/cupertino.dart';
import '../../shared/rounded_button.dart';

class RoundedAlertButton extends StatelessWidget {
  final String label;
  final Function onConfirm;

  RoundedAlertButton(this.label, {@required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(label, onPressed: () {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(label),
            content: Text(
              'Are you sure you want to ${label.toLowerCase()}?',
            ),
            actions: [
              CupertinoButton(
                child: Text(label),
                onPressed: () {
                  onConfirm();
                  Navigator.pop(context);
                },
              ),
              CupertinoButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    });
  }
}
