//
//  PersoonTableTableViewController.swift
//  Rayhane_Hamoumi_S2IT_werkstuk1
//
//  Created by ontlener on 30/04/2018.
//  Copyright © 2018 Rayhane_Hamoumi. All rights reserved.
//

import UIKit

class PersoonTableTableViewController: UITableViewController {

    var PersoonList = [PersoonClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let Persoon1 = PersoonClass(naam: "Rayhane", voornaam: "Hamoumi", image: "Ray_Ragnarsson", telefoonnummer: "0455667788", adres: "Brussel", coordinaatX: 50.7798, coordinaatY: 4.24368)
        PersoonList.append(Persoon1)
        let Persoon2 = PersoonClass(naam: "Jens", voornaam: "De Kuiper", image: "Jens", telefoonnummer: "0458900065", adres: "Brussel", coordinaatX: 51.21543, coordinaatY: 2.928656)
        PersoonList.append(Persoon2)
        let Persoon3 = PersoonClass(naam: "Lagertha", voornaam: "Lothbrok", image: "Lagertha", telefoonnummer: "0456793398", adres: "Brussel", coordinaatX: 50.454241, coordinaatY: 3.956659)
        PersoonList.append(Persoon3)
        let Persoon4 = PersoonClass(naam: "Steve", voornaam: "Jobs", image: "Steve_Jobs", telefoonnummer: "046900388", adres: "Brussel", coordinaatX: 50.159604, coordinaatY: 5.222166)
        PersoonList.append(Persoon4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PersoonList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personen", for: indexPath)

        cell.textLabel?.text = PersoonList[indexPath.row].naam
        cell.detailTextLabel?.text = PersoonList[indexPath.row].voornaam
        cell.imageView?.image = UIImage (named: PersoonList[indexPath.row].image)

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VolgendeDetail"{
            let Volgende = segue.destination as! PersoonDetail
            let indexPath = self.tableView.indexPathForSelectedRow
            
            Volgende.DetailPersoon = PersoonList[(indexPath?.row)!]
        }
    }
    

}
