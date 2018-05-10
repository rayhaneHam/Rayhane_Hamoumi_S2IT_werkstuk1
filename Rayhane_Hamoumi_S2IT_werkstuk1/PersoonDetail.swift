//
//  PersoonDetail.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class PersoonDetail: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    
    var DetailPersoon = PersoonClass()
    
  
    
    @IBOutlet var images: UIImageView!
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var telefoonnummer: UILabel!
    @IBOutlet weak var adres: UILabel!
    
    @IBOutlet var kaart: MKMapView!
    
    let Kaart = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.naam.text = DetailPersoon.naam
        self.voornaam.text = DetailPersoon.voornaam
        self.telefoonnummer.text = DetailPersoon.telefoonnummer
        self.adres.text = DetailPersoon.adres
        self.images.image = UIImage(named: DetailPersoon.image)

        let PersoonKaart = MKPointAnnotation()
        PersoonKaart.coordinate = CLLocationCoordinate2D(latitude: DetailPersoon.coordinaatX, longitude: DetailPersoon.coordinaatY)
        self.kaart.addAnnotation(PersoonKaart)
        PersoonKaart.title = DetailPersoon.naam
        PersoonKaart.subtitle = DetailPersoon.voornaam
        // Do an additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let foto = segue.destination as? PersoonImgViewController {
            foto.Fotodet = self.images.image        }
    }
 

}
