//
//  LocationViewController.swift
//  Clase4Mod2
//
//  Created by alumno on 11/21/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController {
    
    @IBOutlet weak var pictureImage: UIImageView!
    
    @IBAction func cameraButton(_ sender: Any) {
        setupMultimedia()
    }
    var locationManager: CLLocationManager = CLLocationManager()

    override func viewWillAppear(_ animated: Bool) {

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoreLocation()
        
        if CLLocationManager.locationServicesEnabled() {
            print("enable")
        }else {
            print("disable")
        }
        
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            print("always")
        case .authorizedWhenInUse:
            print("when in use")
        case .denied:
            print("denied")
        case .notDetermined:
            //print("notdetermined")
            break
        default:
            print("default")
        }

    }

    func setupMultimedia() {
        
        let picker = UIImagePickerController()
        picker.sourceType = .savedPhotosAlbum
        picker.delegate = self
        
        present(picker, animated: true, completion: nil)
        
    }
    func setupCoreLocation() {
        
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
    }

}
extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        print(locations)
        if let location = locations.first {
            let _ = String(location.coordinate.latitude)
        }

        locationManager.stopUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        switch status {
        case .authorizedAlways:
            print("always")
        case .authorizedWhenInUse:
            print("when in use")
        case .denied:
            print("denied")
        case .notDetermined:
            print("not determined")
        default:
            print("default")
        }
        print(status.rawValue)
    }
}

extension LocationViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let photo = info[.originalImage] as? UIImage {
            pictureImage.image = photo
            //let data = photo.jpegData(compressionQuality: 0.5)
        }
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    
}
