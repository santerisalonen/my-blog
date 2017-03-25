$(function() {
  $('.share-button').click(function() {
    var platform = $(this).data('platform');
    window.dataLayer = window.dataLayer || [];
    dataLayer.push({
      event : 'socialShare',
      platform : platform
    });
  });
});

