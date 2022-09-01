class User {
  String firstName;
  String lastName;

  User({
    required this.firstName,
    required this.lastName,
  });

  @override
  String toString() {
    return "${this.firstName} ${this.lastName}";
  }
}

class Student extends User {
  DateTime yearOfAdmission;

  Student({
    required firstName,
    required lastName,
    required this.yearOfAdmission,
  }) : super(firstName: firstName, lastName: lastName) {}

  int get currentCourse {
    final now = DateTime.now();
    return now.year - this.yearOfAdmission.year;
  }

  @override
  String toString() {
    return "${super.toString()} на курсе: ${this.currentCourse}";
  }
}

// ------

abstract class Car {
  late double weight;
  void run();
}

class Truck extends Car with Painter, Engine {
  @override
  double get weight => 10;

  Truck({
    required Colors color,
    required int enginePower,
  }) {
    this.setColor(color);
    this.enginePower = enginePower;
  }

  @override
  void run() {
    this.runEngine();
  }

  @override
  String toString() {
    return 'Грузовик цвета ${this.colorName}';
  }

  @override
  void runEngine() {
    print(
        'Двигатель работает. Максимальная скорость = ${(this.enginePower / this.weight).toStringAsFixed(1)}.');
  }
}

class Sportcar extends Car with Painter, Engine {
  @override
  double get weight => 2;

  Sportcar({
    required Colors color,
    required int enginePower,
  }) {
    this.setColor(color);
    this.enginePower = enginePower;
  }

  @override
  void run() {
    this.runEngine();
  }

  @override
  String toString() {
    return 'Спорткар цвета ${this.colorName}';
  }

  @override
  void runEngine() {
    print(
        'Двигатель работает. Максимальная скорость = ${(this.enginePower / this.weight).toStringAsFixed(1)}.');
  }
}

enum Colors {
  red,
  green,
  blue,
}

extension ColorsExt on Colors {
  String get name {
    switch (this) {
      case Colors.red:
        return 'red';
      case Colors.green:
        return 'green';
      case Colors.blue:
        return 'blue';
    }
  }
}

mixin Painter on Car {
  late String colorName;
  void setColor(Colors color) {
    switch (color) {
      case Colors.red:
        this.colorName = 'red';
        break;
      case Colors.green:
        this.colorName = 'green';
        break;
      case Colors.blue:
        this.colorName = 'blue';
        break;
    }
  }
}

mixin Engine on Car {
  late int enginePower;
  void runEngine();
}

// ------

class TypePrinter<T> {
  late T _value;

  TypePrinter({required T value}) {
    this._value = value;
  }

  String get asString {
    return this._value.toString();
  }
}

// тут я не оч понял как лучше, вроде и так и так работает,
// вроде зачет, но все же в чем разница?
class AnotherTypePrinter<T> {
  T _value;

  AnotherTypePrinter({required T value}) : this._value = value {}

  String get asString {
    return this._value.toString();
  }
}

void main() {
  final user = Student(
    firstName: "MARIA",
    lastName: "RODINA",
    yearOfAdmission: DateTime(2011, 9, 1),
  );

  print(user);
  print(user.currentCourse);

  // ------
  print('// ----- ');

  Truck cocaColaTruck = Truck(color: Colors.red, enginePower: 90);
  print(cocaColaTruck);
  cocaColaTruck.run();
  Sportcar mcLaren = Sportcar(color: Colors.blue, enginePower: 100);
  print(mcLaren);
  mcLaren.run();

  // ------
  print('// ----- ');

  final number = TypePrinter(value: 10);
  print(number.asString);
  final truck = AnotherTypePrinter(value: cocaColaTruck);
  print(truck.asString);

  // тут я не понял почему все равно доступно обращение truck._value, ведь оно приватное
  print(truck._value);
}
