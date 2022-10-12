import 'dart:convert';
import 'dart:math';
import 'dart:ffi';
import 'dart:io';
void main() {   
Car tesla = new Car(null, "black");

tesla.move();
tesla.beep();
tesla.setSpeed(60);
print(tesla.distance(1));
var color = tesla.getColor(),
    speed = tesla.getSpeed(),
    name = tesla.getName();
print('color ' + color.toString() + ' speed ' + speed.toString() + ' name ' + name.toString());

  print(dupl([5,1,2,2,4,1,2,3,3,4,5]));

  print(editStr(123123123123));
}

List<int> dupl(List<int> nums) {
  for(int i = 0; i < nums.length; i++) {
    int index = nums.lastIndexOf(nums[i]); 
    while(index != i) {
      nums.removeAt(index);
      index = nums.lastIndexOf(nums[i]);
    }
  }
  return nums;
}

String editStr(int n) {
  String str = "";
  
    while(n.round() != 0) {
      str = "${n % 1000} $str";
      n = n ~/ 1000;
    }
    
  
  return str;
}

class Vehicle {
  String? name; 
  String? color; 
  double? speed;

  void setSpeed(double speed) => this.speed = speed;
  String? getName() => name;
  String? getColor() => color;
  double? getSpeed() => speed;
  Vehicle(String? name, String? color) {
    if (name == null || color == null) {
      this.name = "generic name";
      this.color = "generic color";
    } else {
    this.name = name;
    this.color = color;
    }
  }
  
  void move() => print("Vehicle starts moving.");
  void stop() => print("Vihacle stops moving.");
  double distance(int? time) {

    return time == null ? -1:this.speed! * time;
  }
}

class Car extends Vehicle  {
  Car(name, color):super (name,color);
  @override
  void move() => print("Car starts moving.");
  @override
  double distance(int? time) {
    // TODO: implement distance
    return time == null ? -1:sqrt(speed!*time) ;
  }
  void beep() => print("I am generic car");
}

class Bike extends Vehicle {
  Bike(name, color): super (name, color);
@override
  void move() => print("Bike starts moving");
  void bee() => print("i am bike");
@override
  double distance(int? time) {
    return time == null ? -1 :(speed! * time) / 2;
  }
}


