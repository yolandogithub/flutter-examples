import 'package:flutter_examples/model/sample_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class RadialTickCustomization extends SampleView {
  const RadialTickCustomization(Key key) : super(key: key);

  @override
  _RadialTickCustomizationState createState() =>
      _RadialTickCustomizationState();
}

class _RadialTickCustomizationState extends SampleViewState {
  _RadialTickCustomizationState();

  @override
  Widget build(BuildContext context) {
    return getRadialTickCustomization();
  }

SfRadialGauge getRadialTickCustomization() {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          radiusFactor: kIsWeb ? 0.8 : 0.9,
          showAxisLine: false,
          showLastLabel: false,
          startAngle: 270,
          endAngle: 270,
          needsRotateLabels: true,
          labelsPosition: ElementsPosition.outside,
          axisLabelStyle: GaugeTextStyle(fontSize: 12),
          majorTickStyle: MajorTickStyle(
              length: 0.15,
              lengthUnit: GaugeSizeUnit.factor,
              thickness: 1,
              dashArray: kIsWeb ? null : <double>[2, 1]),
          minorTicksPerInterval: 4,
          interval: 10,
          minorTickStyle: MinorTickStyle(
              length: 0.06,
              thickness: 1,
              lengthUnit: GaugeSizeUnit.factor,
              dashArray: kIsWeb ? null : <double>[2, 1]),
          pointers: <GaugePointer>[
            NeedlePointer(
                enableAnimation: kIsWeb ? false : true,
                animationType: AnimationType.ease,
                animationDuration: 1300,
                value: 75,
                needleColor: _tickCustomizationNeedleColor,
                lengthUnit: GaugeSizeUnit.factor,
                needleStartWidth: 0,
                needleEndWidth: 3,
                needleLength: 0.8,
                tailStyle: TailStyle(
                  width: 3,
                  lengthUnit: GaugeSizeUnit.logicalPixel,
                  length: 20,
                  color: _tickCustomizationNeedleColor,
                ),
                knobStyle: KnobStyle(
                  knobRadius: 8,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                  color: _tickCustomizationNeedleColor,
                ))
          ])
    ],
  );
}

final Color _tickCustomizationNeedleColor = const Color(0xFF494CA2);
}