import 'dart:io';

Future<String> getUserInput() {
  stdout.write('Your input (number): ');
  final userInput = stdin.readLineSync();
  return Future.value(userInput ?? '');
}

Stream userInputStream() async* {
  while (true) {
    stdout.write('Your input (number): ');
    final userInput = stdin.readLineSync();
    if (userInput == null || userInput == 'exit' || userInput == 'q') {
      break;
    }
    yield userInput;
  }
}

void main() {
  void basicUserInput() {
    getUserInput().then((userInput) {
      print("Введено значение ${userInput}");
    });
  }

  Future asyncUserInput() async {
    final userInput = await getUserInput();
    print("Введено значение ${userInput}");
  }

  // basicUserInput();
  asyncUserInput();

  userInputStream().listen(
    (value) {
      print("Введено значение ${value}");
    },
  );
}
