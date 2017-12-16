import UIKit
import GoogleMaps

class ViewController4: UIViewController {
    override func loadView() {
        
        //El objeto GMSCameraPosition le dice al mapa que muestre la cordenada
        //28.708681, -106.107282
        let camera = GMSCameraPosition.camera(withLatitude: 28.783796,   longitude: -106.173405, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        //muestra el mapa
        view = mapView
        
        
        
        
        //Agregando lo que viene siendo la ruta del camion
        //marcada por puntos de "Places" de google maps hecho de coordenadas
        let path = GMSMutablePath()
        
        path.add(CLLocationCoordinate2D(latitude: 28.783796,  longitude: -106.173405)) //1
        
        path.add(CLLocationCoordinate2D(latitude: 28.758629,  longitude: -106.168685)) //2
        path.add(CLLocationCoordinate2D(latitude: 28.724036,  longitude: -106.144742 )) //3
        
        path.add(CLLocationCoordinate2D(latitude: 28.687954,   longitude: -106.110468)) //4
        path.add(CLLocationCoordinate2D(latitude: 28.684687,   longitude: -106.111189)) //5
        
        path.add(CLLocationCoordinate2D(latitude: 28.683778,   longitude: -106.110721)) //6
        path.add(CLLocationCoordinate2D(latitude: 28.649371,   longitude: -106.071639)) //7
        
   
        
        let position = CLLocationCoordinate2D(latitude: 28.783796,   longitude: -106.173405)
        let marker = GMSMarker(position: position)
        marker.map = mapView
        
        let rectangle = GMSPolyline(path: path)
        rectangle.map = mapView
        rectangle.strokeWidth = 3
    }
}

