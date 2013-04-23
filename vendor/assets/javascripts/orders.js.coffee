jQuery ->
  Morris.Line
    element: 'energies_chart'
    data: $('#energy_values').data('energies')
    xkey: 'y'
    ykeys: ['a']
    labels: ['Series a']