// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:http/http.dart' as http;
// import 'package:async/async.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const FuturePage(),
//     );
//   }
// }

// class FuturePage extends StatefulWidget {
//   const FuturePage({super.key});

//   @override
//   State<FuturePage> createState() => _FuturePageState();
// }

// class _FuturePageState extends State<FuturePage> {
//   String result = '';
//   bool isLoading = false;
//   late Completer completer;

//   Future getNumber() {
//     completer = Completer<int>();
//     calculate();
//     return completer.future;
//   }

//   Future calculate() async {
//     try {
//       await new Future.delayed(const Duration(seconds: 5));
//       completer.complete(42);
//     } catch (_) {
//       completer.completeError({});
//     }
//   }

//   Future<int> returnOneAsync() async {
//     await Future.delayed(const Duration(seconds: 3));
//     return 1;
//   }

//   Future<int> returnTwoAsync() async {
//     await Future.delayed(const Duration(seconds: 3));
//     return 2;
//   }

//   Future<int> returnThreeAsync() async {
//     await Future.delayed(const Duration(seconds: 3));
//     return 3;
//   }

//   // Future count() async {
//   //   int total = 0;
//   //   total = await returnOneAsync();
//   //   total += await returnTwoAsync();
//   //   total += await returnThreeAsync();
//   //   setState(() {
//   //     result = total.toString();
//   //   });
//   // }

//   Future<void> executeFutures() async {
//     try {
//       setState(() {
//         isLoading = true;
//         result = '';
//       });

//       // Menjalankan futures secara paralel
//       final values = await Future.wait([
//         returnOneAsync(),
//         returnTwoAsync(),
//         returnThreeAsync(),
//       ]);

//       setState(() {
//         result = 'Results: ${values.join(", ")}';
//         isLoading = false;
//       });
//     } catch (e) {
//       setState(() {
//         result = 'An error occurred: $e';
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Back from the Future')),
//       body: Center(
//         child: Column(
//           children: [
//             const Spacer(),
//             ElevatedButton(
//               child: const Text('Go!'),
//               onPressed: () {
//                 // count();
//                 // setState(() {});
//                 // getData()
//                 //     .then((value) {
//                 //       result = value.body.toString().substring(0, 450);
//                 //       setState(() {});
//                 //     })
//                 //     .catchError((_) {
//                 //       result = 'An error occured';
//                 //       setState(() {});
//                 //     });

//                 // getNumber().then((value) {
//                 //   setState(() {
//                 //     result = value.toString();
//                 //   });
//                 // });

//                 // getNumber()
//                 //     .then((value) {
//                 //       setState(() {
//                 //         result = value.toString();
//                 //       });
//                 //     })
//                 //     .catchError((e) {
//                 //       result = 'An error occurred';
//                 //     });

//                 returnFG();
//               },
//             ),
//             const Spacer(),
//             Text(result),
//             const Spacer(),
//             const CircularProgressIndicator(),
//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }

//   void returnFG() {
//     FutureGroup<int> futureGroup = FutureGroup<int>();
//     futureGroup.add(returnOneAsync());
//     futureGroup.add(returnTwoAsync());
//     futureGroup.add(returnThreeAsync());
//     futureGroup.future.then((List<int> value) {
//       int total = 0;
//       for (var element in value) {
//         total += element;
//       }
//       setState(() {
//         result = total.toString();
//       });
//     });
//   }
// }

// Future<Response> getData() async {
//   const authority = 'www.googleapis.com';
//   const path = '/books/v1/volumes/1bm0DwAAQBAJ';
//   Uri url = Uri.https(authority, path);
//   return http.get(url);
// }

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  bool isLoading = false;

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future<void> executeFutures() async {
    try {
      setState(() {
        isLoading = true;
        result = '';
      });

      // Menjalankan futures secara paralel
      final futures = Future.wait<int>([
        returnOneAsync(),
        returnTwoAsync(),
        returnThreeAsync(),
      ]);

      final values = await futures; // Tunggu hingga semua selesai
      final total = values.reduce((a, b) => a + b);

      setState(() {
        result = 'Total: $total'; // Hasil adalah angka 6
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        result = 'An error occurred: $e';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back from the Future')),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(child: const Text('Go!'), onPressed: executeFutures),
            const Spacer(),
            Text(
              result,
              style: const TextStyle(
                color: Colors.purple, // Warna teks ungu
                fontSize: 16, // Ukuran teks lebih kecil
              ),
            ),
            const Spacer(),
            if (isLoading) const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
