// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails';
import 'controllers';
import * as jquery from 'jquery';
import 'semantic-ui';
import 'channels';

$(document).ready(function () {
  $('.ui.dropdown').dropdown();
});

// Scroll to the bottom of the messages length [0] (to the bottom) each time this function is called
// scroll_buttom = function () {
//   if ($('#messages').length > 0) {
//     $('#messages').scrollTop($('#messages')[0].scrollHeight);
//   }
// };

$(document).on('turbo:load', function () {
  if ($('#messages').length > 0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight);
  }
});

submit_message = function () {
  $('#messages').on('keydown'),
    function (e) {
      if (e.key == 13) {
        $('button').click();
        e.target.value = '';
      }
    };
};

// $('.message .close').on('click', function () {
//   $(this).closest('.message').transition('fade');
// });

$(document).on('click', '.message .close', function () {
  $(this).closest('.message').transition('fade').remove();
});
