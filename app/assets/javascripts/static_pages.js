$(document).ready(function(){
  $('tbody').each(function(){
    $(this).html($.trim($(this).html()))
  });
  $('tbody:empty').parents('table').hide();
});