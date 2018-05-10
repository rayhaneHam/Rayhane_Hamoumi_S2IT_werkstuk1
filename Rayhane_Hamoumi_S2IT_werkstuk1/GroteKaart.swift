//
//  GroteKaart.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by Hamoumi Rayhane on 10/05/18.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class GroteKaart: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var Pers = [PersoonClass]()
    var Locatie = CLLocationManager()
    
    @IBOutlet var GroteMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Persoon1 = PersoonClass(naam: "Rayhane", voornaam: "Hamoumi", image: "Ray_Ragnarsson", telefoonnummer: "0455667788", adres: "Brussel", coordinaatX: 50.7798, coordinaatY: 4.24368)
        Pers.append(Persoon1)
        let Persoon2 = PersoonClass(naam: "Jens", voornaam: "De Kuiper", image: "Jens", telefoonnummer: "0458900065", adres: "Brussel", coordinaatX: 51.21543, coordinaatY: 2.928656)
        Pers.append(Persoon2)
        let Persoon3 = PersoonClass(naam: "Lagertha", voornaam: "Lothbrok", image: "Lagertha", telefoonnummer: "0456793398", adres: "Brussel", coordinaatX: 50.454241, coordinaatY: 3.956659)
        Pers.append(Persoon3)
        let Persoon4 = PersoonClass(naam: "Steve", voornaam: "Jobs", image: "Steve_Jobs", telefoonnummer: "046900388", adres: "Brussel", coordinaatX: 50.159604, coordinaatY: 5.222166)
        Pers.append(Persoon4)
        
        
        Locatie.requestAlwaysAuthorization()
        Locatie.startUpdatingLocation()
        
        persoonLoc()
    }
    
    func persoonLoc(){
        for AllePersonen in Pers {
            let PersoonKaart = MKPointAnnotation()
            
    PersoonKaart.coordinate = CLLocationCoordinate2D(latitude: AllePersonen.coordinaatX, longitude: AllePersonen.coordinaatY)
        
            PersoonKaart.title = AllePersonen.naam
            PersoonKaart.subtitle = AllePersonen.voornaam
             self.GroteMap.addAnnotation(PersoonKaart)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }

}
