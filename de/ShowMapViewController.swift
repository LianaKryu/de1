//
//  ShowMapViewController.swift
//  de
//
//  Created by LianaKryu on 10.12.2020.
//

import UIKit
import MapKit

class ShowMapViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    var otdel: Otdel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let geocoder = CLGeocoder()
    
        geocoder.geocodeAddressString(otdel.adressOfOtdel) { (placemarks, error) in
            guard error == nil else { return }
            guard let placemarks = placemarks else { return }
            
            let placemark = placemarks.first!
            
            let annotation = MKPointAnnotation()
            annotation.title = self.otdel.adressOfOtdel
            annotation.subtitle = self.otdel.typeOfOtdel
            
            guard let location = placemark.location else { return }
            annotation.coordinate = location.coordinate
            
            self.map.showAnnotations([annotation], animated: true)
            self.map.selectAnnotation(annotation, animated: true)
            }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
