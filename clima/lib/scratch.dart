

import 'dart:io';

void main(){

  runTasks();
}
void runTasks()async{
  task1();
  await task2();
  task3();
}
void task1(){
  String task1="hello from task1";
  print(task1);
}
Future<void> task2() async{
  String task2="hello from task2";
  Duration d=Duration(seconds: 4);
  // sleep(d);
 await Future.delayed(d,(){
  print(task2);

  });
}
void task3(){
  String task3="hello from task3";
  print(task3);
}