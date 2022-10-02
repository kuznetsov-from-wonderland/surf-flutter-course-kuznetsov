import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/styleguide/styleguide.dart';

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 360,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sight.name,
                    style: const TextStyle(
                      color: CustomColorPalette.textSecondary1,
                      fontFamily: "Roboto",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    sight.type.name,
                    style: const TextStyle(
                      color: CustomColorPalette.textSecondary1,
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    sight.details,
                    style: const TextStyle(
                      color: CustomColorPalette.textSecondary1,
                      fontFamily: "Roboto",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.route),
                            SizedBox(width: 4),
                            Text('Построить маршрут')
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
