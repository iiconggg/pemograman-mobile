import 'package:flutter/material.dart';
import 'loadingpage.dart';
import 'login.dart';
import 'registration.dart';
import 'perbaikan_page.dart'; 

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: const LoadingPage(),
    routes: {
      'login': (context) => const mylogin(),
      'register': (context) => const register(),
      'perbaikan': (context) =>
          const UnderConstructionPage(), 
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Belajar Pemograman Mobile w iiconggg'),
      home: OOPExample(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
} 

class _MyHomePageState extends State<MyHomePage> {
  var _profile, arrHobby, listHobby;
  String _result = "";
  String desc = "";
  int _counter = 0;

  String _getAge(String birthdate) {
    var parseDate = DateTime.parse(birthdate);
    var today = DateTime.now();
    final yy = today.year - parseDate.year;
    final mm = today.month - parseDate.month;
    final dd = today.day - parseDate.day;

    var result = '$yy tahun $mm bulan $dd hari';
    return result;
  }

  void _getProfile() {
    _profile = [
      {
        'fullname': 'Ihsan Muhammad Ramadhan',
        'birthdate': '2002-08-04',
        'gender': 'L',
        'hobby': [
          'Motoran',
          'Skateboard',
          'Desain',
          'Bikin Film',
          'Data Analis'
        ]
      },
      {
        'fullname': 'Oscar',
        'birthdate': '2022-02-20',
        'gender': 'L',
        'hobby': ['Motoran Trabas', 'Mendaki', 'Touring']
      },
      {
        'fullname': 'Alsa Alivia Zahra',
        'birthdate': '2001-07-21',
        'gender': 'P',
        'hobby': ['Dandan', 'Fashion Style', 'Mobilan']
      }
    ];

    setState(() {
      if (_counter < _profile.length) {
        switch (_counter) {
          case 0:
            desc = '\nNo Urut 1\n';
            break;
          case 1:
            desc = '\nNo Urut 2\n';
            break;
          case 2:
            desc = '\nNo Urut 3\n';
            break;
          default:
            desc = '\nTidak Termasuk Pilihan\n';
        }
        String a = "", b = "", c = "", age = "";

        a = value[_counter]['fullname'];
        b = _profile[_counter]['birthdate'];

        if (_profile[_counter]['gender'] == 'L') {
          c = 'Laki-laki';
        } else if (_profile[_counter]['gender'] == 'P') {
          c = 'Perempuan';
        } else {
          c = 'Tidak Diketahui';
        }

        age = _getAge(b);
        arrHobby = _profile[_counter]['hobby'];

        listHobby = "";
        for (int i = 0; i < arrHobby.length; i++) {
          listHobby = '$listHobby${i + 1}. ${arrHobby[i]} \n';
        }
        _result = '$desc\n$a \n$c\nUsia $age\n\nHobi:\n$listHobby';

        _counter++;
      } else {
        _result = 'Tidak ada profil lagi.';
        _counter = 0;
      }
    });
  }

  get value => _profile;
  get newMethod => arrHobby.length;


  /*void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Profil Anggota:'),
            Text(
              _result,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getProfile,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}*/

/*class MapMethodExample extends StatelessWidget {
  late final List<Map<String, String>> profile = [
    {
      'fullname': 'Rian Wibowo Rafions',
      'gender': 'Laki-laki',
      'age': _getAge('2002-04-25')
    },
    {
      'fullname': 'Desty Fitriana Cahyani',
      'gender': 'Perempuan',
      'age': _getAge('2001-12-21')
    },
    {
      'fullname': 'Balkis Rafiana Rafions',
      'gender': 'Perempuan',
      'age': _getAge('2004-06-21')
    }
  ];

  String _getAge(String birthdate) {
    var parseDate = DateTime.parse(birthdate);
    var today = DateTime.now();
    int yy = today.year - parseDate.year;
    int mm = today.month - parseDate.month;
    int dd = today.day - parseDate.day;

    if (dd < 0) {
      mm--;
      dd += DateTime(today.year, today.month, 0).day;
    }
    if (mm < 0) {
      yy--;
      mm += 12;
    }

    var result = '$yy tahun $mm bulan $dd hari';
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Profile'),
      ),
      body: ListView(
        children: profile.map((profileInfo) {
          final String? fullname = profileInfo['fullname'];
          final String? gender = profileInfo['gender'];
          final String? age = profileInfo['age'];
          //var age = _getAge('birthdate');

          return ListTile(
            title: Text(fullname!),
            subtitle: Text('$gender \n$age'),
          );
        }).toList(),
      ),
    );
  }
}*/

class Person {
  String? fullname;
  String? birthdate;
  String? gender;

  String convertGender(String gender) {
    var result = "";

    if (gender == 'L') {
      result = 'Laki-laki';
    } else if (gender == 'P') {
      result = 'Perempuan';
    } else {
      result = 'Tidak diketahui';
    }

    return result;
  }

  String getAge(String birthdate) {
    var parseDate = DateTime.parse(birthdate);
    var today = DateTime.now();

    int yy = today.year - parseDate.year;
    int mm = today.month - parseDate.month;
    int dd = today.day - parseDate.day;

    if (dd < 0) {
      mm--;
      dd += DateTime(today.year, today.month - 1, 0).day;
    }
    if (mm < 0) {
      yy--;
      mm += 12;
    }

    var result = '$yy tahun $mm bulan $dd hari';
    return result;
  }

  void display(String birthdate, String gender, String fullname) {
    var age = getAge(birthdate);
    var sex = convertGender(gender);
    var message = '$fullname \n$sex\nUsia $age\n';

    // ignore: avoid_print
    print(message);
  }
}

class OOPExample extends StatelessWidget {
  final List<Map<String, String>> profile = [
    {
      'fullname': 'Ihsan Muhammad Ramadhan',
      'birthdate': '2002-08-04',
      'gender': 'L',
    },
    {
      'fullname': 'Oscar',
      'birthdate': '2022-02-20',
      'gender': 'L',
    },
    {
      'fullname': 'Alsa Alivia Zahra',
      'birthdate': '2001-07-21',
      'gender': 'P',
    }
  ];
  OOPExample({super.key});

  @override
  Widget build(BuildContext context) {
    final Person person = Person();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Profil'),
        ),
        body: ListView(
          children: profile.map((profileInpo) {
            person.fullname = profileInpo['fullname'];
            person.gender = profileInpo['gender'];
            person.birthdate = profileInpo['birthdate'];

            return ListTile(
              title: Text(person.fullname!),
              subtitle: Text(
                  '${person.convertGender('${person.gender}')} \n${person.getAge('${person.birthdate}')}'),
            );
          }).toList(),
        ));
  }
}
