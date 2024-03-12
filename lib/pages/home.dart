import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:clase_couteau/pages/age.dart';
import 'package:clase_couteau/pages/news.dart';
import 'package:clase_couteau/pages/sexo.dart';
import 'package:clase_couteau/pages/tool.dart';
import 'package:clase_couteau/pages/university.dart';
import 'package:clase_couteau/pages/weather.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List tabItems = [
    'Sexo',
    'Edad',
    'Universidades',
    'Clima',
    'Noticias',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              tabItems[_selectedIndex],
              style: const TextStyle(
                color: Color.fromARGB(255, 139, 140, 156),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.home_filled),
                color: const Color.fromARGB(255, 148, 150, 193),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tolls(),
                    ),
                  );
                }),
            InkWell(
              onTap: () {
                double screenWidth = MediaQuery.of(context).size.width;
                double screenHeight = MediaQuery.of(context).size.height;

                double popupWidthPercentage = 1.0; // 100% del ancho
                double popupHeightPercentage = 0.7; // 70% del alto

                double popupWidth = screenWidth * popupWidthPercentage;
                double popupHeight = screenHeight * popupHeightPercentage;

                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return Container(
                      width: popupWidth,
                      height: popupHeight,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            color: const Color.fromARGB(255, 148, 150, 193),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                    icon: const Icon(
                                      Icons.keyboard_arrow_left_rounded,
                                      color: Color.fromARGB(255, 216, 216, 216),
                                    ),
                                    onPressed: () {}),
                                const Expanded(
                                  child: Center(
                                    child: Text(
                                      'Desarrollado de la app',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    icon: const Icon(
                                      Icons.info,
                                      color: Color.fromARGB(255, 216, 216, 216),
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(90),
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/images/Foto2x2.jpg'),
                                        width: 180,
                                        height: 180,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        'Wander Alexis Bautista Garcia',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '2021-2444@itla.edu.do📧\nDesarrrollador de software.🧑‍💻\n                    ITLA🏢',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '''Mi vida''',
                                        style: TextStyle(
                                          fontSize: 21,
                                          color:
                                              Color.fromARGB(255, 88, 88, 88),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '''Hola, soy Wander Alexis Bautista Garcia. un estudiante de software, nacido en República Dominicana el 29 de diciembre del 2001 en Las Matas de Farfán, mi padres son Wagner Bautista Pérez y Magalís García Amador, un joven con crianza buenas y con el objetivo de querer aprender y seguir desarrollando mis conocimientos.''',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 65, 65, 65),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 16,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: const Image(
                    image: AssetImage('assets/images/Foto2x2.jpg'),
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.wc_outlined),
            title: const Text('Sexo'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.cake_outlined),
            title: const Text('Edad'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.school_rounded),
            title: const Text('Estudios'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.cloudy_snowing),
            title: const Text('Clima'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.newspaper_rounded),
            title: const Text('Noticias'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          GenderPredictionTab(),
          AgePredictionTab(),
          UniversityTab(),
          WeatherApp(),
          News(),

          // news(),
        ],
      ),
    );
  }
}
