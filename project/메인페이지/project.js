$(document).ready(function() {
    let $slider = $('.slider');
    let $sliderItems = $slider.find('.slider-item');
    let $prevButton = $('.button.prev');
    let $nextButton = $('.button.next');
    let currentIndex = 0;
    
    function showSlide(index) {
        $sliderItems.hide();
        $sliderItems.eq(index).show();
    }
    
    function goToPrevSlide() {
        currentIndex = (currentIndex > 0) ? currentIndex - 1 : $sliderItems.length - 1;
        showSlide(currentIndex);
    }
    
    function goToNextSlide() {
        currentIndex = (currentIndex < $sliderItems.length - 1) ? currentIndex + 1 : 0;
        showSlide(currentIndex);
    }
    
    $prevButton.on('click', goToPrevSlide);
    $nextButton.on('click', goToNextSlide);
    
    showSlide(currentIndex);
});


