import 'dart:io';

void main() {

}




// --- Intermediate Project 5: Grade Tracker & GPA Calculator ---
//import 'dart:io';
//
// void main() {
//   Map<String, double> grades = {};
//
//   while (true) {
//     print('\n--- Student Grade Tracker ---');
//     print('To add or update a course grade: press 1');
//     print('To view all grades: press 2');
//     print('To delete a course: press 3');
//     print('To exit and calculate average: press 4');
//
//     String input = stdin.readLineSync() ?? '';
//
//     // 1. Add or Update Course
//     if (input == '1') {
//       print('Enter course code/name: ');
//       String code = stdin.readLineSync() ?? '';
//       if (code.isEmpty) {
//         print('Course code cannot be empty!\n');
//         continue;
//       }
//
//       print('Enter grade: ');
//       String gradeStr = stdin.readLineSync() ?? '';
//       double? gradeDouble = double.tryParse(gradeStr);
//
//       if (gradeDouble == null) {
//         print('Invalid grade number!\n');
//         continue;
//       }
//
//       grades[code] = gradeDouble;
//       print('Grade saved successfully!\n');
//     }
//     // 2. View All Grades
//     else if (input == '2') {
//       if (grades.isEmpty) {
//         print('No grades recorded yet!\n');
//       } else {
//         print('\n--- Your Course Grades ---');
//         for (var entry in grades.entries) {
//           print('Course: ${entry.key} | Grade: ${entry.value}');
//         }
//         print('');
//       }
//     }
//     // 3. Delete a Course
//     else if (input == '3') {
//       if (grades.isEmpty) {
//         print('No grades to delete!\n');
//         continue;
//       }
//       print('Enter course code to delete: ');
//       String code = stdin.readLineSync() ?? '';
//
//       if (grades.containsKey(code)) {
//         grades.remove(code);
//         print('Course deleted successfully!\n');
//       } else {
//         print('Course not found!\n');
//       }
//     }
//     // 4. Exit & Calculate Average
//     else if (input == '4') {
//       print('Exiting program...');
//
//       if (grades.isEmpty) {
//         print('No grades recorded. No average to calculate.\n');
//       } else {
//         double sum = 0;
//         for (var grade in grades.values) {
//           sum += grade; // Safely summing individual values
//         }
//         double average = sum / grades.length;
//         print('Total Courses: ${grades.length}');
//         print('Overall Average: ${average.toStringAsFixed(2)}\n');
//       }
//
//       print('Goodbye!');
//       break;
//     }
//     // Invalid Input Handling
//     else {
//       print('INVALID INPUT. Please enter 1, 2, 3, or 4.\n');
//     }
//   }
// }

//--- Intermediate Project 4: CLI To-Do List Manager ---
//import 'dart:io';
//
// void main() {
//   List<String?> tasks = [];
//   String newTask = '';
//   String delTask = '';
//   int delTaskInt = 0;
//   while (true) {
//     print(
//             'to view your tasks: press 1 \n'
//             'to add a new task: press 2 [YOUR TASK]\n'
//             'to delete a task press 3 [WHICH TASK TO DELETE]\n'
//             'to exit press 4\n'
//     );
//     String input = stdin.readLineSync() ?? '';
//     input.toLowerCase(); // bec if user enters EXIT instead of exit
//
//
//     if (input == '1') {
//       viewTasks(tasks);
//     }
//
//     else if (input == '2') {
//       print('new task: ');
//       newTask = stdin.readLineSync() ?? '';
//       addTasks(tasks, newTask);
//     }
//
//     else if (input == '3') {
//       print('Enter task number to delete: ');
//       delTask = stdin.readLineSync() ?? '';
//       delTaskInt = int.tryParse(delTask) ?? -1;
//
//       // Check if the user-entered number falls within a valid list index
//       if (delTaskInt > 0 && delTaskInt <= tasks.length) {
//         tasks.removeAt(delTaskInt - 1);
//         print('Task deleted successfully!\n');
//       } else {
//         print('Invalid task number!\n');
//       }
//     }
//
//     else if (input == '4') {
//       print("Alright, get lost :)");
//       break;
//     }
//
//     else { // if user types anything else
//         print('INVALID INPUT');
//         continue;
//     }
//   }
// }
//
// void viewTasks(List<String?> list) {
//   // If it's empty, print the message and leave immediately
//   if (list.isEmpty) {
//     print("Your Task List: \nNo Items to view!\n");
//     return;
//   }
//
//   // Otherwise, we know there are items, so safely run the loop
//   print("Your Task List: ");
//   for (int i = 0; i < list.length; i++) {
//     print("[${i + 1}] ${list[i]}");
//   }
// }
//
// void addTasks(List<String?> list, String task){
//   list.add(task);
// }

//--- Beginner Project 1: Number Guessing Game ---
// import 'dart:io';
// import 'package:logging/logging.dart';
// import 'dart:math';
// void main(){
//   final log = Logger("GuessingSystem");
//   Logger.root.level = Level.ALL;
//   Logger.root.onRecord.listen((record) {
//   print('[${record.level.name}] ${record.time}: ${record.message}');
//   });
//
//   // random number
//   final random = Random();
//   int val = random.nextIntRange(1, 5);
//
//   int number = 0;
//   // the loop and taking user input until he gets  it right
//    while(number != val){
//     log.info("Enter A Number: ");
//     String? input = stdin.readLineSync(); // * bt5od string be stdn 3dy b3dha t3ml int.tryParse 34n t7wlo integer
//     number = int.tryParse(input ?? '') ?? 0; // * 34n bdl mt3ml fo2 int? number, momken t3ml  kda
//     if(number == val) {
//       log.info('YOU GOT IT RIGHT!');
//     break;} // * el break 34n te break
//   }
//
// }
//
// extension RandomRange on Random{ //* 34n t3ml el random o kda
//   int nextIntRange(int min, int max){
//     return min + nextInt((max-min)+ 1);
//   }
// }

//--- Beginner Project 2: Text Analyzer & Word Counter ---
//import 'dart:io';
// import 'package:logging/logging.dart';
// import 'dart:math';
//
// void main(){
//   final log = Logger('System');
//   Logger.root.level = Level.ALL;
//   Logger.root.onRecord.listen((record) {
//    print('[${record.level.name}] ${record.time}: ${record.message}');
//   });
//   log.info('Enter text: ');
//   String input = stdin.readLineSync() ?? '';
//
//   while(input.isEmpty){
//       log.info('No number was entered, Enter again: ');
//       input = stdin.readLineSync() ?? '';  // stdin.readLineSync(); not saving into input variable: the fix: input = stdin.readLineSync() ?? '';
//   }
//   calculator(input);
// }
//
// void calculator(String text){
//   print("word count: ${text.split(' ').length}, char count: ${text.length}, "
//       "sentence count: ${text.split(RegExp(r'[.,!?]')).where((s)=>s.trim().isNotEmpty).length}");
// }

//--- Beginner Project 3: Calculator cli app ---
//import 'dart:io';
//
// enum Operations { add, subtract, multiply, divide }
//
// void main() {
//   // The main program loop so it can repeat until the user exits
//   while (true) {
//     print("\n--- CLI Calculator ---");
//
//     print("Enter Num1: ");
//     int? num1 = enterNumber();
//
//     print("Enter operation (+, -, *, / or add, subtract, multiply, divide): ");
//     String opt = enterOperation();
//
//     print("Enter Num2: ");
//     int? num2 = enterNumber();
//
//     // Run the calculation
//     calculate(num1, num2, opt);
//
//     // Prompt to go again or exit with bulletproof validation
//     print("\nWanna go or do another one? [y/n]: ");
//     String choice = (stdin.readLineSync() ?? '').toLowerCase().trim();
//
//     if (choice == 'y') {
//       continue;
//     } else if (choice == 'n') {
//       print("Exiting calculator. Goodbye!");
//       break;
//     } else {
//       // Validation loop for invalid inputs
//       while (choice != 'y' && choice != 'n') {
//         print("Invalid choice. Please ENTER [y/n]: ");
//         choice = (stdin.readLineSync() ?? '').toLowerCase().trim();
//       }
//       if (choice == 'n') {
//         print("Exiting calculator. Goodbye!");
//         break;
//       }
//     }
//   }
// }
//
// int? enterNumber() {
//   String input = stdin.readLineSync() ?? '';
//   return int.tryParse(input);
// }
//
// String enterOperation() {
//   return (stdin.readLineSync() ?? '').toLowerCase().trim();
// }
//
// void calculate(int? num1, num2, String opt) {
//   // Handle case where user input a null number
//   if (num1 == null || num2 == null) {
//     print("Error: Invalid number input detected!");
//     return;
//   }
//
//   if (opt == Operations.add.name || opt == '+') {
//     print("Result: $num1 + $num2 = ${num1 + num2}");
//   }
//   else if (opt == Operations.subtract.name || opt == '-') {
//     print("Result: $num1 - $num2 = ${num1 - num2}");
//   }
//   else if (opt == Operations.multiply.name || opt == '*') {
//     print("Result: $num1 * $num2 = ${num1 * num2}");
//   }
//   else if (opt == Operations.divide.name || opt == '/') {
//     // Division-by-zero validation loop
//     while (num2 == 0) {
//       print("CANT DIVIDE BY ZERO, TRY AGAIN (Enter new Num2): ");
//       num2 = enterNumber();
//       if (num2 == null) {
//         print("Invalid input. Aborting division.");
//         return;
//       }
//     }
//     print("Result: $num1 / $num2 = ${num1 / num2}");
//   }
//   else {
//     print("Unknown operation!");
//   }
// }

// AI tutroial & DOCS notes:
// mtnsa4 double discount = await fetchDiscountFromServer(); el await
// el funciton nfsha: await Future.delayed(Duration(seconds: 3));
// mtnsa4 brdo eno double gamesize  = await el func ,me4 Future<double> da fel function nfsha bs m4 fel variable

// if(completed) hya hya if(completed == true)

// library = 4
// library - 1 = 3
// index bt3 elden ring el 25yr y3ny lw hya 4 yba= 3
// y3ny el mfrod library - 1 = 4 - 1 = 3 = = el index, yba leh m4 s7? --- el 7l!:
// enta bt5lyha '3' elmfrod kda library[library.length-1] == 'elden ring'

// void main() async {
//   List<Clothing> clothList = []; // Length is 0
//
//   // .add() automatically pushes items and increases the size
//   clothList.add(Clothing(5, 'L'));   // Now at index 0
//   clothList.add(Clothing(90, 'XL')); // Now at index 1
// }
// -- OR --
// void main() async {
//   // Creates a list of length 2 filled with null placeholders
//   // Note: Since Clothing is non-nullable, the list type must be List<Clothing?>
//   List<Clothing?> clothList = List.filled(2, null);
//
//   clothList[0] = Clothing(5, 'L');  // Works because index 0 exists
//   clothList[1] = Clothing(90, 'XL'); // Works because index 1 exists
// }

// --- DOCS ---

// const and final ---> cost(compile time) final(runtime)
// void main(List<String> arguments) what is this? ---> b3d ma te run el cli app t2dr tdyha klam zy help o version o kda(arugments)
// arguments.isEmpty || arguments.first == 'help' the isemtpy [mktbt4 7ga] and the .first[awl klma tktbha] , the help and version ans search
// void searchWikipedia(List<String>? arguments) and its used in other functions other than the main func too

// ternary operator:
// String status = health > 0 ? 'Alive' : 'Dead';
// // This means: IF health > 0, status = 'Alive'. ELSE, status = 'Dead'

// articleTitle = stdin.readLineSync() ?? ''; what is this? --> bta5od use input, el ?? ny2ol lw el 3l 4mal (variable) be null est5dm el 3l ymyn '' bdalo
// articleTitle = arguments.join(' '); what is this? -->  Glues the list elements together into a single string separated by spaces.

// final response = await http.get(url);  what is this? --> 34n tst5dm api o tklm el internet btst5dm package http
// bet send request lel url (http.get) o tstna (await) el response

// if (response.statusCode == 200)  what is statusCode -->
// When a server responds to your request, it sends a 3-digit code:
// • 200: Success! Everything loaded perfectly.
// • 404: Not Found. The page or article does not exist.
// • 500: Server Error. The website's server crashed.

// -- organizing code with packages and libraries

// class Option {
//   Option(this.name, {required this.type}); what is this?
//
//   final String name;
//   final OptionType type;
// }

//el 4r7 t7t aho:

//class Option {
//   final String name;
//   final String type;
//
//   // Wrapped in {} makes them named!
//   Option({required this.name, required this.type});
// }
//
// void main() {
//   // Order doesn't matter now because we name them!
//   var opt = Option(type: 'String', name: 'help');
// }

// Maps:
// // A map where the keys are Strings and values are integers
// Map<String, int> inventory = {
//   'Potions': 5,
//   'Arrows': 50,
// };
//
// print(inventory['Potions']); // Prints: 5

// is override just for functions? ik its not, so how exactly to use it with variables too and when
// String get name; // Parent demands a name getter variable
// String get name => 'help'; // Child overrides it cleanly in one line!

// late CommandRunner runner; late? -->The late keyword tells Dart: "Trust me, I won't give this a value right now,
// but I promise to fill it up before I ever try to read it. Don't crash."
// late String serverData; // Allowed!
//
// void main() {
//   serverData = 'Connected'; // Filled before printing
//   print(serverData);
// }

// Error Handling:
//try {
//   List<String> list = ['A'];
//   print(list[5]); // ❌ This index doesn't exist!
// } catch (error) {
//   print('Caught a safe fallback message! Details: $error');
// }

//  Extending my apps with Enums and Extensions:
// enums(fixed dropdowns):
// enum GameState { loading, playing, gameOver }
//
// void main() {
//   GameState current = GameState.playing;
//
//   if (current == GameState.playing) {
//     print('Game is active!');
//   }
// }

// The ! Operator (The "Trust Me" Bang):
// When you have a null-safe variable (like String? title),
// Dart will stop you if you try to use it like a regular string.
// If you know for an absolute fact that the variable is not null at that exact moment,
// you append an exclamation mark (!) to tell Dart: "Shut up and trust me, it's not null."
// String? dynamicTitle = 'Elden Ring';
// print(dynamicTitle!.length); //  Forces Dart to read it without checking for null

// --- b2yt el DOCS ---

// Polishing and Optimization hacks:
// 1-stringBuffer:
// void main() {
//   var buffer = StringBuffer(); // Create the bucket
//
//   buffer.writeln('=== QUEST BOARD ==='); // Adds text + a new line break
//   buffer.write('1. Hunt Goblin ');       // Adds text on the same line
//   buffer.writeln('(50g)');
//
//   print(buffer.toString()); // Compiles it into a single clean string!
// }
// 2-cascade:
// void main() {
//   // Traditional way:
//   // var g = Guild();
//   // g.name = 'Shadows';
//   // g.members = 5;
//
//   // Modern Cascade Way:
//      var g = Guild()
//     ..name = 'Shadows'
//     ..members = 5; // All triggered instantly inside the single statement assignment!
// }


// JSON Parsing & Data Models (fromJson):
// 1- The factory Constructor and fromJson pattern
// class UserProfile {
//   final String username;
//   final int level;
//
//   UserProfile({required this.username, required this.level});
//
//   // 👇 THE MANUAL (The Factory Constructor)
//   factory UserProfile.fromJson(Map<String, dynamic> json) {
//     return UserProfile(
//       username: json['user_name'],
//       level: json['user_level'],
//     );
//   }
// }
//void main() {
//   String rawJsonText = '{"user_name": "PixelKnight", "user_level": 42}';
//
//   Map<String, dynamic> parsedMap = jsonDecode(rawJsonText);
//
//   // We give the loose parts map to the factory constructor
//   UserProfile profile = UserProfile.fromJson(parsedMap);
//
//   // Now we have a real Dart object we can interact with!
//   print(profile.username); // Prints: PixelKnight
// }

// Automated Unit Testing:
// // 1. Imagine you wrote this function in your app
// int doubleGold(int gold) {
//   return gold * 2;
// }
//
// // 2. This is what your Test file looks like
// void main() {
//   test('Should multiply incoming gold values by two', () {
//     // Run the function with a fake input of 5
//     int result = doubleGold(5);
//
//     // We expect the result to be exactly 10!
//     expect(result, 10);
//   });
// }

//  Logging, Diagnostics, and Global Monitoring:
//  Imagine you are running a restaurant kitchen.
// • If you use print(): Every time a cook chops an onion, washes a plate, or if the kitchen catches on fire,
// they yell at the exact same volume. It is absolute chaos. You can't hear what matters.
// • If you use a Logger: The kitchen gets an intercom system with different alarm tones.
// Normal things are quiet whispers, but if the kitchen catches on fire, a massive red siren blares.
// part 1: setting up the alarm siren: final log = Logger('GuildSystem');
// part 2: the intercom control panel: Logger.root.level = Level.ALL;
// t2dr t5lyha level.sever aw level.info aw level.warning 7sb 3yz tsm3 eh
//part 3: formating the message: Logger.root.onRecord.listen((record) {
//   print('[${record.level.name}] ${record.time}: ${record.message}');
// });
// • What this does: This is the printer that spits out the alarm ticket. It formats the text beautifully so it includes:
// 	1. The alert level name (like INFO or SEVERE).
// 	2. The exact timestamp of when it happened.
// 	3. The actual message text
// part 4: yelling into the intercome:
// log.info('Database sync started.'); // A quiet whisper/routine note
// log.warning('Connection is lagging.'); // A yellow caution light
// log.severe('Database crashed!'); // A screaming red siren!

