jQuery(function($){
  $('#important').click(function(){
    $('#book_summary')
      .selection('insert', {text: '<span class="em">', mode: 'before'})
      .selection('insert', {text: '</span>', mode: 'after'});
  });

  $('#preview_btn').click(function(){
    $.post('/books/preview', { text: $('#book_summary').val() });
  });
});
