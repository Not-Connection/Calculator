part of '_index.dart';

class Dialogs {
  static Future<T?> alert<T>(String message) {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Exception Handler'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('OK'),
            onPressed: () => RM.navigate.back(),
          ),
        ],
      ),
      postponeToNextFrame: true,
    );
  }

  static Future<T?> confirmAction<T>(String message) {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => RM.navigate.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => RM.navigate.forceBack(),
          ),
        ],
      ),
    );
  }

  static Future<T?> confirmExit<T>() {
    return RM.navigate.toDialog<T>(
      AlertDialog(
        title: const Text('Confirmation'),
        content: const Text(
          'You are about to close the app. Do you want to continue?',
        ),
        actions: [
          TextButton(
            child: const Text('No'),
            onPressed: () => RM.navigate.back(),
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () => RM.navigate.forceBack(),
          ),
        ],
      ),
    );
  }
}
