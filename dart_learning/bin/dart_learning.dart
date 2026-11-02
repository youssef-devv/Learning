import 'dart:convert';
import 'dart:io';

void main() {

}

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


