$(document).ready(function(){
  $('button[name="show-sat"]').on("click", satChart);
});

function satChart() {
  var userId = $('#user-id').html();

  fetch(API + "/api/v1/admission_scores", {
    headers: {
      'user-id': userId
    }
  })
    .then(response => response.json())
    .then(data => {
      createSatChart(data);
    });
}

function prepareSatData(dataPoints) {

  var dataArray = []
  dataPoints.forEach(function(dataPoint) {
    obj = {}
    obj.x = new Date(dataPoint.created_at)
    obj.y = dataPoint.sat_score
    dataArray.push(obj)
  })
  return dataArray
}

function createSatChart(dataPoints) {

  var satData = prepareSatData(dataPoints);

  var ctx = document.getElementById('satChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'line',

    data: {
        datasets: [{
            label: "SAT",
            backgroundColor: '#474935',
            borderColor: '#474935',
            data: satData,
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
            min: 400,
            max: 1600,
            stepSize: 200
          }
        }]
      }
    }
  });
}
