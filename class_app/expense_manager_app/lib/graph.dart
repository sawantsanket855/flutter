  import "package:flutter/material.dart";
import "package:syncfusion_flutter_charts/charts.dart";
  

  List<ChartData> chartData = [
            ChartData('David', 25, Color.fromRGBO(9,0,136,1)),
            ChartData('Steve', 38, Color.fromRGBO(147,0,119,1)),
            ChartData('Jack', 34, Color.fromRGBO(228,0,124,1)),
            ChartData('Others', 52, Color.fromRGBO(255,189,57,1))
        ];

  class ChartData {
        ChartData(this.x, this.y, this.color);
            final String x;
            final double y;
            final Color color;
    }

   
Widget getGraph(){
  return SfCircularChart(
            series: <CircularSeries<ChartData, String>>[
              DoughnutSeries<ChartData, String>(
                innerRadius: "70%",
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  )
            ]);
}