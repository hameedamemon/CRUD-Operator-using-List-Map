import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: VerticalList(),
//     );
//   }
// }

// class VerticalList extends StatelessWidget {
//   // Map to represent categories and their items
//   final Map<String, List<String>> items = {
//     'Fruits': ['Apple', 'Banana', 'Mango'],
//     'Vegetables': ['Onion', 'Potato'],
//     'Fast Food': ['Zinger', 'Burger'],
//     'Dry Fruits': ['Almond', 'Pista', 'Cashew', 'Walnut'],
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Vertical List'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           String category = items.keys.elementAt(index);
//           List<String> categoryItems = items[category]!;

//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               elevation: 3,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       category,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     ...categoryItems.map((item) => Padding(
//                           padding: const EdgeInsets.only(top: 4.0),
//                           child: Text(
//                             item,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NestedListExample(),
//     );
//   }
// }

// class NestedListExample extends StatelessWidget {
//   // List of Maps
//   final List<Map<String, dynamic>> items = [
//     {
//       'category': 'Fruits',
//       'items': ['Apple', 'Banana', 'Mango'],
//     },
//     {
//       'category': 'Vegetables',
//       'items': ['Onion', 'Potato'],
//     },
//     {
//       'category': 'Fast Food',
//       'items': ['Zinger', 'Burger'],
//     },
//     {
//       'category': 'Dry Fruits',
//       'items': ['Almond', 'Pista', 'Cashew', 'Walnut'],
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List with Map'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           final categoryData = items[index];
//           final String category = categoryData['category'];
//           final List<String> categoryItems = categoryData['items'];

//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//               elevation: 3,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       category,
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     ...categoryItems.map((item) => Padding(
//                           padding: const EdgeInsets.only(top: 4.0),
//                           child: Text(
//                             item,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: StudentResultSheet(),
//     );
//   }
// }

class StudentResultSheet extends StatelessWidget {
  // List of student data
  final List<Map<String, dynamic>> students = [
    {
      'name': 'Ali Ahmed',
      'fatherName': 'Ahmed Khan',
      'rollNo': '1001',
      'totalMarks': 500,
      'obtainMarks': 450,
      'minMarks': 250,
    },
    {
      'name': 'Ayesha Khan',
      'fatherName': 'Farooq Khan',
      'rollNo': '1002',
      'totalMarks': 500,
      'obtainMarks': 480,
      'minMarks': 250,
    },
    {
      'name': 'Umar Ali',
      'fatherName': 'Zubair Ali',
      'rollNo': '1003',
      'totalMarks': 500,
      'obtainMarks': 390,
      'minMarks': 250,
    },
    {
      'name': 'Sara Malik',
      'fatherName': 'Malik Usman',
      'rollNo': '1004',
      'totalMarks': 500,
      'obtainMarks': 460,
      'minMarks': 250,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Result Sheet'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${student['name']}',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Father Name: ${student['fatherName']}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Roll No: ${student['rollNo']}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Total Marks: ${student['totalMarks']}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Obtain Marks: ${student['obtainMarks']}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Min Marks: ${student['minMarks']}',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      student['obtainMarks'] >= student['minMarks']
                          ? 'Status: Passed'
                          : 'Status: Failed',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: student['obtainMarks'] >= student['minMarks']
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
