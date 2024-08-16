$(document).ready(function() {
    let currentIndex = 0;
    const $slider = $('.slider');
    const $slides = $('.slider-item');
    let sliderWidth = $slides.outerWidth();
    const sliderInterval = 3000;

    function updateSliderWidth() {
        sliderWidth = $slides.outerWidth();
    }

    function showSlide(index) {
        $slider.animate({left: -index * sliderWidth}, 1000, "easeInOutQuint");
    }

    function nextSlide() {
        currentIndex = (currentIndex + 1) % $slides.length;
        showSlide(currentIndex);
    }

    function prevSlide() {
        currentIndex = (currentIndex - 1 + $slides.length) % $slides.length;
        showSlide(currentIndex);
    }

    $('.next').click(nextSlide);
    $('.prev').click(prevSlide);

});

function navigateTo(url) {
    window.location.href = url;
}
