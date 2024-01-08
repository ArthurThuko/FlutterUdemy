import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double percentage;
  final String label;
  final double value;

  const ChartBar({super.key, 
    required this.label,
    required this.value,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: non_constant_identifier_names
      builder: (ctx, Constraints) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox(
                // ignore: unnecessary_string_interpolations
                child: Text('${value.toStringAsFixed(2)}'),
              ),
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      color: const Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: percentage,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.05,
            ),
            SizedBox(
              height: Constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        );
      },
    );
  }
}
