function initMap() {
    const container = document.getElementById('map');
    const options = {
        center: new kakao.maps.LatLng(48.8566, 2.3522), // 파리의 위도와 경도
        level: 12
    };

    const map = new kakao.maps.Map(container, options);

    const venues = [
        { name: 'Stade de France', lat: 48.9244, lng: 2.3605 },
        { name: 'Paris Expo Porte de Versailles', lat: 48.8320, lng: 2.2874 },
        { name: 'Stade Pierre-Mauroy', lat: 50.6230, lng: 3.0812 }
    ];

    venues.forEach(venue => {
        const marker = new kakao.maps.Marker({
            position: new kakao.maps.LatLng(venue.lat, venue.lng),
            map: map,
            title: venue.name
        });

        const infowindow = new kakao.maps.InfoWindow({
            content: `<div style="padding:5px;">${venue.name}</div>`
        });

        kakao.maps.event.addListener(marker, 'mouseover', () => {
            infowindow.open(map, marker);
        });

        kakao.maps.event.addListener(marker, 'mouseout', () => {
            infowindow.close();
        });
    });
}

window.onload = initMap;