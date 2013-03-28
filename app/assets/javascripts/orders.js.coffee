jQuery ->
  Morris.Line
    element: 'energy_values'
    data: $('#energy_values').data('energy')
    xkey: 'y'
    ykeys: ['a']
    labels: ['Series a']