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
      createChart(data);
    });
}

function prepareData(data_points) {

  var data_array = []
  data_points.forEach(function(data_point) {
    obj = {}
    obj.x = new Date(data_point.created_at)
    obj.y = data_point.gpa
    data_array.push(obj)
  })
  return data_array
}

function createChart(data_points) {

  var gpa_data = prepareData(data_points);

  var ctx = document.getElementById('gpaChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'line',

    data: {
        datasets: [{
            label: "GPA",
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: gpa_data,
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
