import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная работа №3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color likeColor = Colors.grey;
  int _likeCount = 5;
  void _print () {
    setState(() {

    });
  }
  void _pressedLike () {
    setState(() {
      if (likeColor == Colors.grey) {
        likeColor = Colors.blue;
        _likeCount++;
      }
      else {
        likeColor = Colors.grey;
        _likeCount--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Общежития КубГАУ'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                //картинка
                children: <Widget>[
                  SizedBox(
                    // todo:  при переходе из редактора, картинка открывается

                    child: Image.asset(
                      'assets/images/20obsh.jpg',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                  ),
                ],
              ),
              Row(
                //  строка с номер общаги, адресом и лайками
                children: [
                  Column(
                    mainAxisAlignment:
                    MainAxisAlignment.start, // общежитие + адрес
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 30, 10, 0),
                        child: Text(
                          'Общежитие №20',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 5, 10, 0),
                        child: Text(
                          'Краснодар, ул. Калинина, 13',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // лайк
                    children: [
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(55, 25, 0, 0),
                            child:
                            IconButton(onPressed: _pressedLike, icon: Icon(Icons.favorite, color: likeColor, ),
                            ),

                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                              child: Text(
                                '$_likeCount',
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 0, 25),
                child: Row(
                  // строка с виджетами "позвонить", "маршрут", "поделиться"
                  children: [
                    // todo:  В следующий раз при размещении объектов с отступами,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      //    todo: кнопки должны быть выполнены через виджет Button
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.phone, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'позвонить',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.near_me, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'маршрут',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        children:  <Widget>[
                          IconButton(onPressed: _print, icon: const Icon(Icons.share, color: Colors.green),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              'поделиться',
                              style:
                              TextStyle(color: Colors.green, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: Row(
                  children: const <Widget>[
                    Flexible(
                      child: Text(
                        'Студенческий городок или так называемый'
                            'кампус Кубанского ГАУ состоит из двадцати '
                            'общежитий, в которых проживает более 8000 '
                            'студентов, что составляет 96% от всех '
                            'нуждающихся. Студенты первого курса '
                            'обеспечены местами в общежитии полностью. '
                            'В соответствии с Положением о '
                            'студенческих общежитиях университета, '
                            'при поселении между администрацией и '
                            'студентами заключается договор найма '
                            'жилого помещения. Воспитательная работа в '
                            'общежитиях направлена на улучшение быта, '
                            'соблюдение правил внутреннего распорядка, '
                            'отсутствия асоциальных явлений в '
                            'молодежной среде. Условия проживания в '
                            'общежитиях университетского кампуса '
                            'полностью отвечают санитарным нормам и '
                            'требованиям: наличие оборудованных кухонь, '
                            'душевых комнат, прачечных, читальных залов, '
                            'комнат самоподготовки, помещений для '
                            'заседаний студенческих советов и наглядной '
                            'агитации. С целью улучшения условий быта '
                            'студентов активно работает система '
                            'студенческого самоуправления - студенческие '
                            'советы организуют всю работу по '
                            'самообслуживанию.',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                        textDirection: TextDirection.ltr,
                        softWrap: true,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}