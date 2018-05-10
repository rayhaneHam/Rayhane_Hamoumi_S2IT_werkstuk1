//
//  PersoonClass.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit

class PersoonClass {
    var naam:String
    var voornaam:String
    var image:String
    var telefoonnummer:String
    var adres:String
    var coordinaatX: Double
    var coordinaatY: Double
    init() {
        naam = ""
        voornaam = ""
        image = ""
        telefoonnummer = ""
        adres = ""
        coordinaatX = 0
        coordinaatY = 0
    }
    
    init(naam: String, voornaam: String, image: String, telefoonnummer: String, adres: String, coordinaatX: Double, coordinaatY: Double) {
        
        self.naam = naam
        self.voornaam = voornaam
        self.image = image
        self.telefoonnummer = telefoonnummer
        self.adres = adres
        self.coordinaatX = coordinaatX
        self.coordinaatY = coordinaatY
    }
}
