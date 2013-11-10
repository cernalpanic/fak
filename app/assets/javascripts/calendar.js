$(document).ready(function () {
  var $cal = $('#calendar').fullCalendar({

    editable: true,

    //defaultView: view,

    allDayDefault: false,

    dayClick: function(date, allDay, jsEvent, view) { 
      //$('.new-event-button').trigger('click');
      //$cal.data('start', $.fullCalendar.formatDate( date,'yyyy-MM-dd hh:mm'));
      //$cal.data('end', $.fullCalendar.formatDate( date,'yyyy-MM-dd hh:mm'));
    },

    eventDurationEditable: true,

    eventStartEditable: true,

    events: { url: '/shows.json' },

    eventClick: function(event, element, view) { },

    dragOpacity: '.4',

    eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc) {
      //updateEvent(event);
    },

    eventResize: function(event, jsEvent, ui, view) {
      //updateEvent(event);
    },

    eventAfterRender: function( event, element, view) {
      /*
      $(element).attr('data-id', event.id);

      $(element).find('.fc-event-inner').append('<span class="glyphicon glyphicon-remove pull-right delete-event">');

      $(element).find('.fc-event-title').html('<a href="/events/' + event.id + '/edit"' + ' data-method="get" data-remote="true">' + event.title + '</a>');

      initDeleteEventAction($(element).find('.delete-event'), event.id);
      */
    },

    header: {
      left:   'title',
      center: 'month, agendaWeek, agendaDay',
      right:  'today prev,next'
    },

    allDaySlot: false,

   // minTime: 6,

   // maxTime: 18,

    viewDisplay: function(view) {
      //$.cookie('view', view.name);
    }

  });

  function initDeleteEventAction($el, id) {
    $($el).on('click', function () {
      $.ajax({
        type: 'POST',
        url:'/events/' + id + '.json',
        dataType: 'json',
        data: {
          _method : 'DELETE',
          success: function(data) {
            $('div').find('[data-id="' + id + '"]').fadeOut();
            $cal.fullCalendar('removeEvents', id);
          }
        }
      });
    });
  }

  function updateEvent(event){
    $.ajax({
      type: 'POST',
      url:'/events/' + event.id + '.json',
      dataType: 'json',
      data: {
        _method : 'PUT',
        event: {
          id : event.id,
          title : event.title,
          start : event.start,
          end : event.end,
          description : event.description 
        }
      },
      success: function (data) {
      }
    });
  }

  //responsive for smartphones
  var $window = $(window);
  function checkWidth() {
    var windowsize = $window.width();
    if (windowsize < 440) { //smartphone portrait
        $cal.fullCalendar('changeView', 'agendaDay');
    }
  }
  //checkWidth();
  //$(window).resize(checkWidth);
  
  //add the new event button
  $('.fc-header-right').append('<span class="fc-header-space"></span><a data-remote="true" href="/events/new" class="new-event-button fc-button fc-state-default fc-corner-left fc-corner-right" unselectable="on">new event</a>');

  $('.start-date-field, end-date-field').datetimepicker();
  
});
