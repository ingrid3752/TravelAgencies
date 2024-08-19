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

function initMap() {
    var location = { lat: 48.8566, lng: 2.3522 }; // 예시: 파리의 위도와 경도
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: location
    });
    var marker = new google.maps.Marker({
        position: location,
        map: map,
        title: '경기장 위치'
    });
}


function navigateTo(url) {
    window.location.href = url;
}
