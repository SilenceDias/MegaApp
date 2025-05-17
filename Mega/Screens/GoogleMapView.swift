import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    var zoom: Float = 12.0

    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: zoom
        )
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.mapType = .normal
        // Включаем кнопки управления локацией (необязательно)
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Можно плавно анимировать камеру при изменении координат:
        let camera = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: zoom
        )
        uiView.animate(to: camera)
    }
}
