$(document).ready(function() {
  $('.save').on('click', function (e) {
    e.preventDefault();
    var error = false;

    $('.required').each(function (i, v) {
      if ($(v).val() == '') {
        let label = $("label[for='"+$(v).attr('id')+"']");
        label.css({color: 'red'});
        error = true;
      }
    });

    if (!error) {
      $('form').submit();
    }
  });
});
