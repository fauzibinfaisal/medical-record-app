import 'package:flutter/material.dart';

class AppConfirmDialog extends StatelessWidget {
  const AppConfirmDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmText = 'Ya',
    this.cancelText = 'Batal',
    this.onConfirm,
  });

  final String title;
  final String message;
  final String confirmText;
  final String cancelText;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      content: Text(message),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      actions: [
        SizedBox(
          width: 100,
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(cancelText),
          ),
        ),

        SizedBox(
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pop(context);

              onConfirm?.call();
            },
            child: Text(confirmText),
          ),
        ),
      ],
    );
  }
}
