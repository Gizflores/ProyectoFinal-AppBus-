//
//  2ViewController.swift
//  Proyecto
//
//  Created by Gizflores on 14/12/17.
//  Copyright © 2017 Gizflores. All rights reserved.
//

import UIKit
import GoogleMaps

class _ViewController: UIViewController {
    override func loadView() {
        
        //El objeto GMSCameraPosition le dice al mapa que muestre la cordenada
        //28.708681, -106.107282
        let camera = GMSCameraPosition.camera(withLatitude: 28.637417,    longitude: -106.081539, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        //muestra el mapa
        view = mapView
        
        
        
        
        //Agregando lo que viene siendo la ruta del camion
        //marcada por puntos de "Places" de google maps hecho de coordenadas
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude: 28.637417,  longitude: -106.081539))
        path.add(CLLocationCoordinate2D(latitude: 28.640659,  longitude: -106.077630))
        path.add(CLLocationCoordinate2D(latitude: 28.638700,  longitude: -106.075280))
        
        path.add(CLLocationCoordinate2D(latitude: 28.648571,  longitude: -106.065432))
        path.add(CLLocationCoordinate2D(latitude: 28.635818,  longitude: -106.044338))
        path.add(CLLocationCoordinate2D(latitude: 28.635950,  longitude: -106.042353))
        
        path.add(CLLocationCoordinate2D(latitude: 28.634277,  longitude: -106.039353))
        path.add(CLLocationCoordinate2D(latitude: 28.639560,  longitude: -106.036352))
        path.add(CLLocationCoordinate2D(latitude: 28.637859,  longitude: -106.032320))
        
        path.add(CLLocationCoordinate2D(latitude: 28.634277,  longitude: -106.039353))
        path.add(CLLocationCoordinate2D(latitude: 28.639560,  longitude: -106.036352))
     
        
        
        
        
        
        let position = CLLocationCoordinate2D(latitude: 28.637417,  longitude: -106.081539)
        let marker = GMSMarker(position: position)
        marker.map = mapView
        
        let rectangle = GMSPolyline(path: path)
        rectangle.map = mapView
        rectangle.strokeWidth = 3
    }

}
