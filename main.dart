import 'dart:io';

void main() {
  int monthIndex = 8;

  switch (monthIndex) {
    case 1:
      print('Январь');
      break;
    case 2:
      print('Февраль');
      break;
    case 3:
      print('Март');
      break;
    case 4:
      print('Апрель');
      break;
    case 5:
      print('Май');
      break;
    case 6:
      print('Июль');
      break;
    case 7:
      print('Июнь');
      break;
    case 8:
      print('Август');
      break;
    case 9:
      print('Сентябрь');
      break;
    case 10:
      print('Октябрь');
      break;
    case 11:
      print('Ноябрь');
      break;
    case 12:
      print('Декабрь');
      break;
    default:
      print('Неверный номер месяца');
  }

  // ------------

  for (var i = 0; i <= 100; i++) {
    if (i.isEven) {
      print(i);
    }
  }

  // ------------
  var sum = 0;
  stdout.write('Game on. Press q for exit\n');
  while (true) {
    stdout.write('Your input (number): ');
    final userInput = stdin.readLineSync();
    if (userInput == null || userInput == 'q') {
      break;
    }
    try {
      final n = int.parse(userInput);
      sum += n;
      print("sum is $sum\n");
    } catch (_) {
      stdout.write('Invalid input\n');
    }
  }
}
