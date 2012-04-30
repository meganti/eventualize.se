var images = [
    "images/bg-1.jpg"
  , "images/bg-2.jpg"
  , "images/bg-3.jpg"
  , "images/bg-4.jpg"
  , "images/bg-5.jpg"
];

$(images).each(function(){
  $("<img/>")[0].src = this; 
});

var index = 0;

$.backstretch(images[index], {speed: 2000});

setInterval(function() {
  index = (index >= images.length - 1) ? 0 : index + 1;
  $.backstretch(images[index]);
}, 7000);