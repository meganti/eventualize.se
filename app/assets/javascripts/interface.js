var images = [
    "assets/bg-1.jpg"
  , "assets/bg-2.jpg"
  , "assets/bg-3.jpg"
  , "assets/bg-4.jpg"
];

$(images).each(function(){
  $("<img/>")[0].src = this; 
});

var index = 0;

$.backstretch(images[index], {speed: 3000});

setInterval(function() {
  index = (index >= images.length - 1) ? 0 : index + 1;
  $.backstretch(images[index]);
}, 10000);