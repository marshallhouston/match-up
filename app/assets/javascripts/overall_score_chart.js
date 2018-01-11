$(document).ready(function(){
  $('button[name="show-overall-score"]').on("click", overallScoreChart);
});

function overallScoreChart() {
  var userId = $('#user-id').html();

  fetch(API + "/api/v1/admission_scores", {
    headers: {
      'user-id': userId
    }
  })
    .then(response => response.json())
    .then(data => {
      createScoreChart(data);
    });
}

function prepareScoreData(dataPoints) {

  var dataArray = []
  dataPoints.forEach(function(dataPoint) {
    obj = {}
    obj.x = new Date(dataPoint.created_at)
    obj.y = dataPoint.admission_index_score
    dataArray.push(obj)
  })
  return dataArray
}

function createScoreChart(dataPoints) {

  var scoreData = prepareScoreData(dataPoints);

  var ctx = document.getElementById('overallScoreChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'line',

    data: {
        datasets: [{
            label: "Index Score",
            backgroundColor: '#69D1C5',
            borderColor: '#69D1C5',
            data: scoreData,
            fill: false
        }]
    },
    options: {
      scales: {
        xAxes: [{
          type: 'time',
          distribution: 'linear'
        }],
        yAxes: [{
          ticks: {
            min: 50,
            max: 150,
            stepSize: 20
          }
        }]
      }
    }
  });
}
