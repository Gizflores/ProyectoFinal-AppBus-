import UIKit
import GoogleMaps

class ViewController3: UIViewController {
    override func loadView() {
        
        //El objeto GMSCameraPosition le dice al mapa que muestre la cordenada
        //28.708681, -106.107282
        let camera = GMSCameraPosition.camera(withLatitude: 28.597124,  longitude: -106.113614, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        //muestra el mapa
        view = mapView
        
        
        
        
        //Agregando lo que viene siendo la ruta del camion
        //marcada por puntos de "Places" de google maps hecho de coordenadas
        let path = GMSMutablePath()
        
        path.add(CLLocationCoordinate2D(latitude: 28.597124,  longitude: -106.113614))
        
        path.add(CLLocationCoordinate2D(latitude: 28.596191,  longitude: -106.112702))
        path.add(CLLocationCoordinate2D(latitude: 28.595541,  longitude: -106.113625))
        
        path.add(CLLocationCoordinate2D(latitude: 28.594260,  longitude: -106.112359))
        path.add(CLLocationCoordinate2D(latitude: 28.592856,  longitude: -106.114140))
        
        path.add(CLLocationCoordinate2D(latitude: 28.589879,   longitude: -106.110653))
        path.add(CLLocationCoordinate2D(latitude: 28.598531,   longitude: -106.106088))
        
        path.add(CLLocationCoordinate2D(latitude: 28.611441,   longitude: -106.092279))
        path.add(CLLocationCoordinate2D(latitude: 28.620542,   longitude: -106.087575 ))
        
        
        path.add(CLLocationCoordinate2D(latitude: 28.619506,   longitude: -106.084732 ))
        path.add(CLLocationCoordinate2D(latitude: 28.622265,   longitude: -106.078488 ))
        
        let position = CLLocationCoordinate2D(latitude: 28.597124,  longitude: -106.113614)
        let marker = GMSMarker(position: position)
        marker.map = mapView
        
        let rectangle = GMSPolyline(path: path)
        rectangle.map = mapView
        rectangle.strokeWidth = 3
    }
}

