// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require popper
//= require activestorage
//= require turbolinks
//= require_tree .

var slideIndex=0;
var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
var dots1 = document.getElementsByClassName("dot1");

var logoindex = 0;
var logolength = document.getElementsByClassName("logo");


var factindex = 0;
var factlength = document.getElementsByClassName("diduknow");

var arrivalindex = 0;
var arrivallength = document.getElementsByClassName("newarrival");


var careerindex=0;
var careerlength = document.getElementsByClassName("career1");

var categoryindex=0;
var categorylength = document.getElementsByClassName("category");

$(document).ready(function() {

showSlides();

function showSlides() {
    var i;
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}


logoshow();

function logoshow() {
    var l;
    
    for (l = 0; l < logolength.length; l++) {
       logolength[l].style.display = "none";  
    }
    logoindex++;
    if (logoindex > logolength.length) {logoindex = 1}
    logolength[logoindex-1].style.display = "block";  
    setTimeout(logoshow, 5000); // Change image every 2 seconds
}


factshow();

function factshow() {
    var j;
    
    for (j = 0; j < factlength.length; j++) {
       factlength[j].style.display = "none";  
    }
    factindex++;
    if (factindex > factlength.length) {factindex = 1}    
    factlength[factindex-1].style.display = "block";  
    setTimeout(factshow, 4000); // Change image every 2 seconds
}


arrivalshow();

function arrivalshow() {
    var k;
    for (k = 0; k < arrivallength.length; k++) {
       arrivallength[k].style.display = "none";  
    }
    arrivalindex++;
    if (arrivalindex > arrivallength.length) {arrivalindex = 1}    
    arrivallength[arrivalindex-1].style.display = "block";  
    setTimeout(arrivalshow, 4000); // Change image every 2 seconds
}

careershow();

function careershow() {
    var k;
    
    for (k = 0; k < careerlength.length; k++) {
       careerlength[k].style.display = "none";  
    }
    careerindex++;
    if (careerindex > careerlength.length) {careerindex = 1}    
    careerlength[careerindex-1].style.display = "block";  
}



categoryshow();

function categoryshow() {
    var k;
    for (k = 0; k < categorylength.length; k++) {
       categorylength[k].style.display = "none";  
    }
    for (k = 0; k < dots1.length; k++) {
        dots1[k].className = dots1[k].className.replace(" active1", "");
    }
    categoryindex++;
    if (categoryindex > categorylength.length) {categoryindex = 1} 
    dots1[categoryindex-1].className += " active1";   
    categorylength[categoryindex-1].style.display = "block";  
    setTimeout(categoryshow, 4500); // Change image every 2 seconds
}


});


function plusSlides(n) {
  showSlides1(slideIndex += n);

}

function currentSlide(n) {
  showSlides1(slideIndex = n);
}


function showSlides1(n) {
  var i;
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

function plusfacts(n) {
  factshow(factindex += n);

}

function currentfact(n) {
  factshow(factindex = n);
}


function factshow(n) {
  var i;
  if (n > factlength.length) {factindex = 1}    
  if (n < 1) {factindex = factlength.length}
  for (i = 0; i < factlength.length; i++) {
      factlength[i].style.display = "none";  
  }
  factlength[factindex-1].style.display = "block";
}

function plusarrival(n) {
  arrivalshow(arrivalindex += n);

}

function currentarrival(n) {
  arrivalshow(arrivalindex = n);
}


function arrivalshow(n) {
  var i;
  if (n > arrivallength.length) {arrivalindex = 1}    
  if (n < 1) {arrivalindex = arrivallength.length}
  for (i = 0; i < arrivallength.length; i++) {
      arrivallength[i].style.display = "none";  
  }
  arrivallength[arrivalindex-1].style.display = "block";
}

function pluscareer(n) {
  careershow(careerindex += n);

}

function careershow(n) {
  var i;
  if (n > careerlength.length) {careerindex = 1}    
  if (n < 1) {careerindex = careerlength.length}
  for (i = 0; i < careerlength.length; i++) {
      careerlength[i].style.display = "none";  
  }
  careerlength[careerindex-1].style.display = "block";
}


function pluscategory(n) {
  categoryshow(categoryindex += n);

}


function currentcategory(n) {
  categoryshow(categoryindex = n);
}


function categoryshow(n) {
  var i;
  if (n > categorylength.length) {categoryindex = 1}    
  if (n < 1) {categoryindex = categorylength.length}
  for (i = 0; i < categorylength.length; i++) {
      categorylength[i].style.display = "none";  
  }
   for (i = 0; i < dots1.length; i++) {
      dots1[i].className = dots1[i].className.replace(" active1", "");
  }
  categorylength[categoryindex-1].style.display = "block";
  dots1[categoryindex-1].className += " active1";
}
