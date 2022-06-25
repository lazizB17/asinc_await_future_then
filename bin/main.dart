import 'dart:io';
import 'dart:math';
import 'package:powers/powers.dart';
////////////////////////////////////////////////////////////////////////////////
// void main() async{
//   print(await bye());
// }
// // asynchronous
// Future <String> bye() async {
//   return "see you soon!";
// }

////////////////////////////////////////////////////////////////////////////////
/*
void main() async{
  print(await group()); // 1-USUL

  group().then((v) {  // 2-USUL
    print(v);
  });

  bye().then((value) => print(value));

  print(await hello());
  print(await bye());
}

Future <String> group() async{
  return "Flutter B-17 ✅";
}

Future <String> hello() async{
  return "Good morning!";
}

Future <String> bye() async{
  return "Good bye!";
}
*/
/*
void main() async{
  start().then((value) => print(value));
  loading().then((value) => print(value));
  end().then((value) => print(value));
}

Future <String> start() async{
  return "Loop started!";
}
Future <String> loading() async{
  return "Loop loading!";
}
Future <String> end() async{
  return "Loop ended!";
}
*/
/*
void main() async{
  waitForMe();
  print("I was waiting here...");

  await waitForMe().then((value) => print("I was waiting here..."));

  await waitForMe().then((_) {
    print("I was waiting here...");
  });
}

Future waitForMe() async{
  print("Started...");
  return Future.delayed(Duration(seconds: 5), () {
    print("Now I'm done!");
  });
}
*/
/*
void main(){
  _incrementCounter();
}

Future <int> someFunction() async {
  int count = 0;
  for(int i = 0; i < 1000000000; i++){
    count += i;
  }
  print("Done. ");
  return count;
}

Future <void> test2() async {
  print("Begin.");
  var a = await Future.microtask(someFunction);
  print("End");
}

void _incrementCounter() {
  print("Above.");
  test2();
  print("Below");
}
*/
/*
Future<void> main() async {
  print('Awaiting user order');
  countSeconds(4);
  await createdOrderMessage();

  print(await createdOrderMessage());
}

Future<String> createdOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() => Future.delayed(
  Duration(seconds: 4),
      () => 'Large Latte',
);

void countSeconds(int s){
  for(var i = 1; i <= s; i++){
    Future.delayed(Duration(seconds:i),() => print(i));
  }
}
*/
////////////////////////////////////////////////////////////////////////////////
// Example for  anonymous function
/*
void main(){
  // example - 1.
  var list = ["Abdulaziz","Islam","Muhammadjon","Nasibullo"];
  print("Team Group 2.");
  list.forEach((item) {
    print('${list.indexOf(item)} : $item');
  });
}
*/
/*
void main(){
  // 2-misol
  var icecream = ['chocolate', 'vanilla', 'orange'];
  icecream.forEach((item) {
    print('We have the $item flavour');
  });
}
*/
/*
void main(){
  // 3-misol
  bool Function(int) isEven = (int son) => son % 2 == 0;
  print(isEven(20));
}
*/
/*
void main(){
  // 4-misol
  int Function(int) cube = (int n) {
    return n * n * n;
  };
  print(cube(5));
}
*/
/*
void main(){
  // 5-misol
  String Function(String) myName = (String name) {
    if(name.length > 2) {
      return name;
    } else {
      throw Exception("Bunday ism yo'q !");
    }
  };
  print(myName("Abdulaziz"));
}
*/
////////////////////////////////////////////////////////////////////////////////
// Stream, async, await, Future, then, error, examples
/*
void main() {
  final future = Future<double>.error("Server error");
  future.then((value) => print(value)).catchError((err){
    print(err);
  });
}
*/
/*
void main() {
  final future = someFunction();
  future.then((value) => print(value)).catchError((err){
    print(err);
  });
}

Future <double> someFunction() async {
  throw Exception("Some function error!");
  // return Future<double>.value(3.14);
}
*/
/*
void main() {
  final future = someFunction();
  future.then((value) => print(value)).catchError((err){
    print(err);
  });
}

Future <double> someFunction() async {
  return Future<double>.sync(() => 12.3);
}
*/
/*
void main() {
  final future = someFunction();
  future.then((value) => print(value)).catchError((err){
    print(err);
  });

  Future.wait<double>([
    someFunction(),
    anyFunction()
  ]).then((value) => print(value)).catchError((error){
    print(error);
  });
}

Future <double> someFunction() async {
  return Future<double>.sync(() => 12.3);
}
Future <double> anyFunction() async {
  return Future<double>.value(3.14);
}
*/
/*
void main(){
  mainFunction(someFunction);
  mainFunction((int value) => print("My happy number: $value"));
}

void mainFunction(void Function(int) callback){
  callback(123);
}

void someFunction(int number){
  print(number);
}
*/
/*
void main() async{
  final stream = countStream(10);
  await for(int item in stream){
    print(item);
  }
}

Stream <int> countStream(int max) async*{
  for(int i = 0; i < max; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
*/
/*
void main() async{
  final streamName = myName("Abdulaziz");
  String ism = '';
  await for(String item in streamName){
    print(item);
    ism += item;
  }
  print(ism);
}

Stream <String> myName(String name) async* {
  for(int i = 0; i < name.length; i++){
    await Future.delayed(Duration(seconds: 1));
    yield name[i];
  }
}
*/
/*
void main() async{
  final stream = countStream(10);
  int sum = await sumStream(stream);
  print("jami: $sum");
}

Stream <int> countStream(int max) async*{
  for(int i = 0; i < max; i++){
    await Future.delayed(Duration(milliseconds: 200));
    yield i;
  }
}

Future <int> sumStream(Stream<int> stream) async{
  int sum = 0;
  await for(int item in stream){
    print("item: $item");
    sum += item;
  }
  return sum;
}
*/
/*
void main() async{
  final streamEmoji = myEmoji(["😀","😁","😂","🤣","😎","🙄","😛","😶","🤔","🤑","😨","😱","🤬","😡","🤮","😆","🤩","🥶","🤡","👾"]);
  String ism = '';
  await for(String item in streamEmoji){
    print(item);
    ism += item;
  }
  print(ism);
}

Stream <String> myEmoji(List<String> emoji) async* {
  for(int i = 0; i < emoji.length; i++){
    await Future.delayed(Duration(seconds: 1));
    yield emoji[i];
  }
}
*/

void main() async{
  final streamEmoji = myEmoji();
  await for(String item in streamEmoji){
    print(item);
  }
}

Stream<String> myEmoji() async* {
  for(int i = 128550; i < 128570; i++){
    await Future.delayed(Duration(seconds: 1));
    yield String.fromCharCode(i);
  }
}

/*
void main() async{
  // final rand = randomNumbers();
  // await for(int item in rand){
  //   print(item);
  // }

  final rand2 = randomNumbers2();
  await for(int item in rand2){
    print(item);
  }
}

// Stream <int> randomNumbers() async* {
//   final random = Random();
//
//   for(var i = 0; i < 10; ++i){
//     await Future.delayed(Duration(seconds: 1));
//     yield random.nextInt(50) + 1;
//   }
// }

Stream <int> randomNumbers2() async* {
  final random2 = Random();

  for(var i = 0; i < 10; ++i){
    sleep(Duration(seconds: 1));
    yield random2.nextInt(50) + 1;
  }
}
*/
/*
Stream<int> newStream = Stream<int>.periodic(
    Duration(seconds: 1), (count) => Random().nextInt(100));

void main() async {
  await for (var item in newStream) {
    print(item);
  }
}
*/
/*
Stream<String> newStream = Stream<String>.value("Hello");

void main() async {
  await for (var item in newStream) {
    print(item);
  }
}
*/
/*
// Stream<String> newStream = Stream<String>.error("error");

void main() async {
  // await for (var item in newStream) {
  //   print(item);
  // }
  
  something(Stream<int>.error("Whoops"));
}

Future<void> something(Stream<int> source) async {
  try{
    await for(final event in source){
      print(event);
    } 
  } catch(e){
    print('An error occured: $e');
  }
}
*/
/*
  final stream = Stream<double>.fromIterable(const <double> [
    1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9
  ]);

void main() async {
  await for (var item in stream) {
    print(item);
  }
}
*/
////////////////////////////////////////////////////////////////////////////////
/*
void main(){
  // stdout.write("n = ");
  // int n = int.parse(stdin.readLineSync()!);
  // degreeOfTwo(n);
}
// void degreeOfTwo(int n) {
//   int i = 0;
//   while(n != 0){
//     i++;
//     if(n == pow(2, i)){
//       print(true);
//       return;
//     } else {
//       print(false);
//       return;
//     }
//   }
//   print("i = $i");
// }
*/
// Palindrome number
/*
void main(){
  int reminder, sum = 0, temp;
  int number = 222;
  temp = number;    // time: O(n);   space: O(n)

  while(number > 0)
  {
    reminder = number % 10;
    sum = (sum*10)+reminder;
    number = number~/10;
  }
  if(sum == temp)
  {
    print("Palindrom raqam.");
  }else{
    print("Palindrom raqam emas.");
  }
}
*/











































