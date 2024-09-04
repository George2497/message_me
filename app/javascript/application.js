// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails';
import 'controllers';
import * as jquery from 'jquery';
import 'semantic-ui';

$(document).ready(function () {
  $('.ui.dropdown').dropdown();
});

// $('.message .close').on('click', function () {
//   $(this).closest('.message').transition('fade');
// });

$(document).on('click', '.message .close', function () {
  $(this)
    .closest('.message')
    .fadeOut('slow', function () {
      $(this).remove();
    });
});
