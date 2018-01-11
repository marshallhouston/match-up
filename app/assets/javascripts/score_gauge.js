function drawChart() {

  var admissionScore = $('#admissionScore').html();

  var data1 = google.visualization.arrayToDataTable([
    ['Label', 'Value'],
    ['Your Score', 0]
  ]);

  var data2 = google.visualization.arrayToDataTable([
    ['Label', 'Value'],
    ['Your Score', parseInt(admissionScore)]
  ]);

  var options = {
    width: 400, height: 120,
    redFrom: 45, redTo: 75,
    yellowFrom:75, yellowTo: 90,
    greenFrom:90, greenTo: 146,
    minorTicks: 10,
    min: 45,
    max: 146
  };

  var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

  chart.draw(data1, options);
  chart.draw(data2, options);
}
