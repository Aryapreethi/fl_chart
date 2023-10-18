import 'package:flutter/material.dart';
import 'package:graph1/fl_graph/line_chart.dart';
import 'package:graph1/resources/resources.dart';

class LinearChart extends StatefulWidget {
  const LinearChart({super.key});
  @override
  State<LinearChart> createState() => _LinearChartState();
}

class _LinearChartState extends State<LinearChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 19),
            child: Container(
              height: 357,
              width: 354,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff1C1C24),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 21,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.7, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sales Figures',
                              style: TextStyle(
                                color: Color(0xffffafafb),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.118,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff1C1C24),
                                  border: Border.all(
                                      color: AppColors.contentColorborder,
                                      width: 1),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sales",
                                      style: TextStyle(
                                        color: AppColors.contentColorborder,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.contentColorborder,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 31.46,
                        width: 17,
                      ),
                      const Expanded(child: LineChartSample1())
                    ],
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
