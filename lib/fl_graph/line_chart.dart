import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import 'package:graph/resource/app_resourse.dart';
import 'package:graph1/resources/resources.dart';

class _LineChartsamp extends StatefulWidget {
  const _LineChartsamp({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  State<_LineChartsamp> createState() => _LineChartsampState();
}

class _LineChartsampState extends State<_LineChartsamp> {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      widget.isShowingMainData ? sampleData1 : sampleData2,
      duration: const Duration(milliseconds: 250),
    );
  }

  List<Color> gradientColors = [
    AppColors.contentColorBlue,
    Color.fromARGB(255, 53, 58, 65),
  ];

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          // maxContentWidth: 7,
          fitInsideVertically: true,
          tooltipBgColor: Color(0xff292932).withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        // lineChartBarData1_1,
        lineChartBarData1_2,
        // lineChartBarData1_3,
      ];

  LineTouchData get lineTouchData2 => const LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        // lineChartBarData2_1,
        // lineChartBarData2_2,
        // lineChartBarData2_3,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: AppColors.contentColorgrey);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '200';
        break;
      case 2:
        text = '400';
        break;
      case 3:
        text = '600';
        break;
      case 4:
        text = '800';
        break;
      case 5:
        text = '1k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 55,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: AppColors.contentColorgrey,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Jan', style: style);
        break;
      case 2:
        text = const Text('feb', style: style);
        break;
      case 4:
        text = const Text('mar', style: style);
        break;
      case 6:
        text = const Text('Apr', style: style);
        break;
      case 8:
        text = const Text('May', style: style);
        break;
      case 10:
        text = const Text('jun', style: style);
        break;
      case 12:
        text = const Text('jul', style: style);
        break;
      case 14:
        text = const Text('Aug', style: style);
        break;
      case 16:
        text = const Text('sep', style: style);
        break;
      case 18:
        text = const Text('Oct', style: style);
        break;
      case 20:
        text = const Text('Nov', style: style);
        break;
      case 22:
        text = const Text('Dec', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 40,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
        show: true,
        drawHorizontalLine: false,
        drawVerticalLine: true,
        getDrawingVerticalLine: (value) => FlLine(
          color: AppColors.borderColor.withOpacity(0.2),
          strokeWidth: 1,
        ),
      );

//graph border make true if you want border
  FlBorderData get borderData => FlBorderData(
        show: false,
        border: Border(
          bottom:
              BorderSide(color: AppColors.primary.withOpacity(0.2), width: 2),
          left: const BorderSide(color: AppColors.contentColorCyan),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );
//line of the bar
  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: Color(0xff1E75FF),
        barWidth: 3.54,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          gradient: LinearGradient(
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
          // spotsLine: BarAreaSpotsLine(show: true,),
          show: true,
          color: const Color.fromARGB(255, 58, 84, 255).withOpacity(0),
        ),
        spots: const [
          FlSpot(0, 3),
          FlSpot(1, 4),
          FlSpot(2, 3.5),
          FlSpot(3, 5),
          FlSpot(4, 4),
          FlSpot(5, 5.5),
          FlSpot(6, 4),
          FlSpot(7, 4.5),
          FlSpot(8, 3.7),
          FlSpot(9, 3),
          FlSpot(10, 2.5),
          FlSpot(11, 3),
          FlSpot(12, 4),
           FlSpot(13, 5.1),
           FlSpot(14, 5.5),
        ],
      );
}

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({super.key});

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: AspectRatio(
        aspectRatio: 1.23,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: _LineChartsamp(isShowingMainData: isShowingMainData),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
