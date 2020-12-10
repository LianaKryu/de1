//
//  MapOtdelViewController.swift
//  de
//
//  Created by LianaKryu on 10.12.2020.
//

import UIKit
import MapKit

class MapOtdelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var Otdels: [Otdel] = [
        Otdel(adressOfOtdel: "Москва", typeOfOtdel: "Банкомат", workOfOtdel: "Работает", timeOfWork: "Часы работы 07:00 - 23:00"),
        Otdel(adressOfOtdel: "Москва, ул. Вавилова, д. 7", typeOfOtdel: "Отделение", workOfOtdel: "Работает", timeOfWork: "Часы работы 09:00 - 20:00")
            ]
    var otdel: Otdel?
    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MapOtdelTableViewCell
        cell.address.text = Otdels[indexPath.row].adressOfOtdel
        cell.type.text = Otdels[indexPath.row].typeOfOtdel
        cell.work.text = Otdels[indexPath.row].workOfOtdel
        cell.workTime.text = Otdels[indexPath.row].timeOfWork
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowMap" {
            let dvc = segue.destination as! ShowMapViewController
            dvc.otdel = self.otdel
        }
    }

     
   
}
