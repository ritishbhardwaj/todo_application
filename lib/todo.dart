

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';


//after completing the class then then write this thing
part 'todo.g.dart';   //part keyword se dono classes merge ho jaate hai


// this will create the toJson and fromJson own by own
@JsonSerializable()
@HiveType(typeId: 01)    // giving the table a id (manually)
class Todo{
  @HiveField(0)       // by this we define the column of the table
  String  ? title;
  @HiveField(1)
  String ? id;
  @HiveField(2)
  bool ? isDone;
  @HiveField(3)
  int ? priority;
  
  Todo({
    this.title,
    this.id,
    this.isDone,
    this.priority
  });



}




// after writing above thing write following command
// dart run build_runner watch --delete-conflicting-outputs