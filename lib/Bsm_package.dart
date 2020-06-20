import 'package:flutter/material.dart';
import 'color_bloc2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bsm_package extends StatefulWidget {
  @override
  _Bsm_packageState createState() => _Bsm_packageState();
}

class _Bsm_packageState extends State<Bsm_package> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        builder: (context) => ColorBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_grey);
            },
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 20.0,
            height: 30.0,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              bloc.dispatch(ColorEvent.to_limeAccent);
            },
            backgroundColor: Colors.limeAccent,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Bloc State Management Package",),

      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 150.0,
            height: 150.0,
            color: currentColor,
          ),
        ),
      ),
    );
  }
}