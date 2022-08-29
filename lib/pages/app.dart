import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  static const backgroundColor = Color.fromARGB(255, 46, 46, 46);
  static const botonColor = Color.fromARGB(255, 28, 28, 28);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CALCULATOR",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: backgroundColor,
          body: const MatrizBotones(),
        ));
  }
}

class MatrizBotones extends StatefulWidget {
  const MatrizBotones({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MatrizBotones();
  }
}

class _MatrizBotones extends State<MatrizBotones> {
  String _operaciones = "";
  String _historial = "";
  void agregarop(String element) {
    setState(() {
      _operaciones += element;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediasize = MediaQuery.of(context);
    print(mediasize.size);
    return Container(
        height: mediasize.size.height,
        width: mediasize.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: mediasize.size.height * 0.25,
              width: mediasize.size.width,
              color: Myapp.botonColor,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _historial,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(100, 255, 255, 255)),
                      ),
                      Text(
                        _operaciones,
                        style:
                            const TextStyle(fontSize: 50, color: Colors.white),
                        textDirection: TextDirection.ltr,
                      )
                    ],
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: mediasize.size.width * 0.5,
                color: Myapp.botonColor,
                height: mediasize.size.height * 0.05,
              ),
              MaterialButton(
                minWidth: mediasize.size.width * 0.25,
                height: mediasize.size.height * 0.05,
                onPressed: () {
                  setState(() {
                    _operaciones = "";
                  });
                },
                color: Myapp.botonColor,
                child:
                    const Text('Clear', style: TextStyle(color: Colors.white)),
              ),
              MaterialButton(
                minWidth: mediasize.size.width * 0.25,
                height: mediasize.size.height * 0.05,
                onPressed: () {
                  setState(() {
                    _operaciones =
                        _operaciones.substring(0, _operaciones.length - 1);
                  });
                },
                color: Myapp.botonColor,
                textColor: Colors.white,
                child: const Icon(Icons.arrow_back),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("7");
                  },
                  color: Myapp.botonColor,
                  child: const Text('7',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("8");
                  },
                  color: Myapp.botonColor,
                  child: const Text('8',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("9");
                  },
                  color: Myapp.botonColor,
                  child: const Text('9',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("/");
                  },
                  color: Colors.black54,
                  child: const Text('/',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("4");
                  },
                  color: Myapp.botonColor,
                  child: const Text('4',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("5");
                  },
                  color: Myapp.botonColor,
                  child: const Text('5',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("6");
                  },
                  color: Myapp.botonColor,
                  child: const Text('6',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("*");
                  },
                  color: Colors.black54,
                  child: const Text('X',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("1");
                  },
                  color: Myapp.botonColor,
                  child: const Text('1',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("2");
                  },
                  color: Myapp.botonColor,
                  child: const Text('2',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("3");
                  },
                  color: Myapp.botonColor,
                  child: const Text('3',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
                MaterialButton(
                  minWidth: mediasize.size.width * 0.25,
                  height: mediasize.size.height * 0.15,
                  onPressed: () {
                    agregarop("+");
                  },
                  color: Colors.black54,
                  child: const Text('+',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              MaterialButton(
                minWidth: mediasize.size.width * 0.5,
                height: mediasize.size.height * 0.15,
                onPressed: () {
                  agregarop("0");
                },
                color: Myapp.botonColor,
                child: const Text('0',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              MaterialButton(
                minWidth: mediasize.size.width * 0.25,
                height: mediasize.size.height * 0.15,
                onPressed: () {
                  agregarop(".");
                },
                color: Myapp.botonColor,
                child: const Text('.',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              MaterialButton(
                minWidth: mediasize.size.width * 0.25,
                height: mediasize.size.height * 0.15,
                onPressed: () {
                  agregarop("-");
                },
                color: Colors.black54,
                child: const Text('-',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              MaterialButton(
                minWidth: mediasize.size.width,
                height: mediasize.size.height * 0.07,
                onPressed: () {
                  try {
                    String resultado = _operaciones.interpret().toString();
                    setState(() {
                      _historial = _operaciones;
                      _operaciones = resultado;
                    });
                  } catch (e) {
                    final snackBar = SnackBar(
                      content: const Text('Invalid Operation'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Algo de código para ¡deshacer el cambio!
                        },
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                color: Colors.red,
                child: const Text('=',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ]),
          ],
        ));
  }
}
