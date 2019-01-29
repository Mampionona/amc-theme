<?php
    $latitude = get_field('latitude');
    $longitude = get_field('longitude');
    $zoom = get_field('zoom');
    $api_key = get_field('api_key');
?>

<?php if ($latitude && $longitude && $zoom && $api_key) : ?>
    <div id="map" class="map"></div>
    <script>
        var pos = {
            lat: <?php echo floatval($latitude); ?>,
            lng: <?php echo floatval($longitude); ?>
        };

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: <?php echo floatval($zoom); ?>,
                center: pos,
                disableDefaultUI: true
            })
        }
    </script>
    <script async defer src="<?php echo 'https://maps.googleapis.com/maps/api/js?key=' . $api_key . '&callback=initMap'; ?>"></script>
<?php endif; ?>
