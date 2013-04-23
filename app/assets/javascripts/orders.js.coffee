jQuery ->
  Morris.Line
    element: 'energies_chart'
    data: $('#energies_chart').data('energies')
    xkey: 'created_at'
    ykeys: ['value']
    labels: ['Series a']
