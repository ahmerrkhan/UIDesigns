import 'package:flutter/material.dart';




class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Slider in FLutter"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SliderContainer(),
      ),
    );
  }
}

class SliderContainer extends StatefulWidget {

  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  static  double _minvalue = 1.0;
  static  double _maxvalue = 10.0;

  RangeValues _values = RangeValues(_minvalue, _maxvalue);


  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      inactiveColor: Colors.amber,
      activeColor: Colors.deepOrange,
      min: _minvalue,
      max: _maxvalue,
      values: _values,
      onChanged: (val) {
        print(val);
        setState(() {
          values: val;
        });
      },

    );
  }
}
