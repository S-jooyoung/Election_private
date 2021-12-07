document.addEventListener('DOMContentLoaded', function() {
    // calendar element 취득
    var calendarEl = document.getElementById('calendar');
    // full-calendar 생성하기
    var calendar = new FullCalendar.Calendar(calendarEl, {
      
      //헤더에 표시할 툴바
      headerToolbar:{
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,listWeek'
      },
      
      expandRows : true,             //화면에 맞게 높이 재설정
      nowIndicator:true,             //현재 시간 마크
      initialView: 'dayGridMonth',   //초기 로드 될때 보이는 캘린더 화면( 기본 설정: 달)
      locale:'ko',                   //한국어 설정

    //   eventRender: function (event, element, view) {

    //     //일정에 hover시 요약
    //     element.popover({
    //       title: $('<div />', {
    //         class: 'popoverTitleCalendar',
    //         text: event.title
    //       }).css({
    //         'background': event.backgroundColor,
    //         'color': event.textColor
    //       }),
    //       content: $('<div />', {
    //           class: 'popoverInfoCalendar'
    //         }).append('<p><strong>등록자:</strong> ' + event.username + '</p>')
    //         .append('<p><strong>구분:</strong> ' + event.type + '</p>')
    //         .append('<p><strong>시간:</strong> ' + getDisplayEventDate(event) + '</p>')
    //         .append('<div class="popoverDescCalendar"><strong>설명:</strong> ' + event.description + '</div>'),
    //       delay: {
    //         show: "800",
    //         hide: "50"
    //       },
    //       trigger: 'hover',
    //       placement: 'top',
    //       html: true,
    //       container: 'body'
    //     });
    
    //     return filtering(event);
    
    //   },

      // 이벤트
      events:[ 
        
        {
          "_id": 1,
          "title": "윤석열",
          "description": "Lorem ipsum dolor sit incid idunt ut Lorem ipsum sit.",
          "start": "2021-12-01T09:30",
          "end": "2021-12-01T15:00",
          "type": "카테고리1",
          "username": "윤석열",
          "backgroundColor": "#D25565",
          "textColor": "#ffffff",
          "allDay": false
        }, {
          "_id": 2,
          "title": "이재명",
          "description": "Lorem ipsum dolor sit incid idunt ut Lorem ipsum sit.",
          "start": "2021-12-02T12:30",
          "end": "2021-12-02T15:30",
          "type": "카테고리1",
          "username": "이재명",
          "backgroundColor": "#blue",
          "textColor": "#ffffff",
          "allDay": false
        }, 

      ],

        eventRender: function(info) {
        var tooltip = new Tooltip(info.el, {
        title: info.event.extendedProps.description,
        placement: 'top',
        trigger: 'hover',
        container: 'body'
        });
    }

      
    });
    calendar.render();
  });