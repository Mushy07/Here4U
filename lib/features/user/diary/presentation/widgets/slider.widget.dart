import 'package:flutter/material.dart';

class SimpleSlider extends StatefulWidget {
  final double min;
  final double max;
  final double initialValue;
  final int? divisions;
  final ValueChanged<double> onChanged;

  const SimpleSlider({
    super.key,
    this.min = 0,
    this.max = 10,
    this.initialValue = 5,
    this.divisions,
    required this.onChanged,
  });

  @override
  State<SimpleSlider> createState() => _SimpleSliderState();
}

class _SimpleSliderState extends State<SimpleSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _value,
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
          label: _value.round().toString(),
          activeColor: Colors.yellow[400],
          inactiveColor: Colors.white,
          onChanged: (newValue) {
            setState(() {
              _value = newValue;
            });
            widget.onChanged(newValue);
          },
        ),
      ],
    );
  }
}
