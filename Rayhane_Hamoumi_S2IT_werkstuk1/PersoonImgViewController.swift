//
//  PersoonImgViewController.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by Hamoumi Rayhane on 10/05/18.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit

class PersoonImgViewController: UIViewController {

    var Fotodet: UIImage?
    
    @IBOutlet var perImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        perImg.image = Fotodet
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
