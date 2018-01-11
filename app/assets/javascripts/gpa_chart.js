$(document).ready(function(){
  $('button[name="show-gpa"]').on("click", gpaChart);
});

function gpaChart() {
  var userId = $('#user-id').html();

  fetch(API + "/api/v1/admission_scores", {
    headers: {
      'user-id': userId
    }
  })
    .then(response => response.json())
    .then(data => {
      createGpaChart(data);
    });
}

function prepareGpaData(dataPoints) {

  var dataArray = []
  dataPoints.forEach(function(dataPoint) {
    obj = {}
    obj.x = new Date(dataPoint.created_at)
    obj.y = dataPoint.gpa
    dataArray.push(obj)
  })
  return dataArray
}

function createGpaChart(dataPoints) {

  var gpaData = prepareGpaData(dataPoints);

  var ctx = document.getElementById('gpaChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'line',

    data: {
        datasets: [{
            label: "GPA",
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: gpaData,
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
            min: 0,
            max: 4.0,
            stepSize: 0.5
          }
        }]
      }
    }
  });
}
