import UIKit
import GoogleMaps

class ViewController: UIViewController {
    override func loadView() {
       
        //El objeto GMSCameraPosition le dice al mapa que muestre la cordenada
        //28.708681, -106.107282
        let camera = GMSCameraPosition.camera(withLatitude: 28.704447,  longitude: -106.126269, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        //muestra el mapa
        view = mapView
        
        
       
      
        //Agregando lo que viene siendo la ruta del camion
        //marcada por puntos de "Places" de google maps hecho de coordenadas
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude: 28.704447,  longitude: -106.126269))
        
        path.add(CLLocationCoordinate2D(latitude: 28.715495,  longitude: -106.136658))
        
        path.add(CLLocationCoordinate2D(latitude: 28.720049,  longitude: -106.130613))
        
        path.add(CLLocationCoordinate2D(latitude: 28.718788,  longitude: -106.126321))
        
        path.add(CLLocationCoordinate2D(latitude: 28.724530,  longitude: -106.110997))
        
        path.add(CLLocationCoordinate2D(latitude: 28.712354,  longitude: -106.105328))
        
        path.add(CLLocationCoordinate2D(latitude: 28.705245,  longitude: -106.124576))
        
        let position = CLLocationCoordinate2D(latitude: 28.704447,  longitude: -106.126269)
        let marker = GMSMarker(position: position)
        marker.map = mapView
        
        let rectangle = GMSPolyline(path: path)
        rectangle.map = mapView
        rectangle.strokeWidth = 3
    }
}
