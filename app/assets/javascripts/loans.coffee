# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#loans-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#loans-table').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'business_name'},
      {data: 'description'},
      {data: 'amount'},
      {data: 'duration'},
      {data: 'expiry_date'},
      {data: 'owner'}
    ]
    # pagingType is optional, if you want full pagination controls.
    # Check dataTables documentation to learn more about
    # available options.
