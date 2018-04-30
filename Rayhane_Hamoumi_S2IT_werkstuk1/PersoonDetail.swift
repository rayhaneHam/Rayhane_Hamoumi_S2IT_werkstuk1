//
//  PersoonDetail.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit

class PersoonDetail: UIViewController {
    
    var DetailPersoon = PersoonClass()
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var telefoonnummer: UILabel!
    @IBOutlet weak var adres: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.naam.text = DetailPersoon.naam
        self.voornaam.text = DetailPersoon.voornaam
        self.telefoonnummer.text = DetailPersoon.telefoonnummer
        self.adres.text = DetailPersoon.adres
        self.image.image = UIImage(named: DetailPersoon.image)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
