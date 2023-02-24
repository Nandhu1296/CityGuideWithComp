//
//  ContactVC.swift
//  CityGuidePro
//
//  Created by nandha on 11/02/23.
//

import UIKit

import Foundation

import MapKit
import CoreLocation


class ContactVC: UIViewController {
    
    let locationManager = CLLocationManager()

    
    @IBOutlet weak var callView: CustomShadowView!
    @IBOutlet weak var sendLocationView: CustomShadowView!
    @IBOutlet weak var shareLocationOneView: CustomShadowView!
    @IBOutlet weak var editContactView: CustomShadowView!
    @IBOutlet weak var shareLocationtwoView: CustomShadowView!
    @IBOutlet weak var editContactTwoView: CustomShadowView!
    @IBOutlet weak var shareLocationThreeView: CustomShadowView!
    @IBOutlet weak var editContactThreeView: CustomShadowView!
    @IBOutlet weak var shareLocationBtnOne: UIButton!
    @IBOutlet weak var editContactBtnOne: UIButton!
    @IBOutlet weak var shareLocationBtnTwo: UIButton!
    @IBOutlet weak var editContactBtnTwo: UIButton!
    @IBOutlet weak var shareLocationBtnThree: UIButton!
    @IBOutlet weak var editContactBtnThree: UIButton!
    
    
    @IBOutlet weak var editContactOne: UIButton!
    @IBOutlet weak var editContactTwo: UIButton!
    @IBOutlet weak var editContactThree: UIButton!
    
    @IBOutlet weak var userNameOne: UILabel!
    @IBOutlet weak var userNameTwo: UILabel!
    @IBOutlet weak var userNameThree: UILabel!
    
    @IBOutlet weak var callContactOne: UIButton!
    @IBOutlet weak var callContactTwo: UIButton!
    @IBOutlet weak var callContactThree: UIButton!
    
    @IBOutlet weak var messageContactOne: UIButton!
    @IBOutlet weak var messageContactTwo: UIButton!
    @IBOutlet weak var messageContactThree: UIButton!
    
    @IBOutlet weak var videoContactOne: UIButton!
    @IBOutlet weak var videoContactTwo: UIButton!
    @IBOutlet weak var videoContactThree: UIButton!
    
    @IBOutlet weak var ContactUserNameLabel1: UILabel!


    @IBOutlet weak var ContactUserNameLabel2: UILabel!
    
    
    @IBOutlet weak var ContactUserNameLabel3: UILabel!
    
    
    
    @IBOutlet weak var Contact1stRowNameLabel: UILabel!
    
    
    
    @IBOutlet weak var Contact1stRowMessage: UILabel!
    
    
    @IBOutlet weak var Contact1stRowVideo: UILabel!
    
        
    @IBOutlet weak var MsgIn2ndRow: UILabel!
    @IBOutlet weak var VideoIn2ndRow: UILabel!
    
    
    @IBOutlet weak var ThirdRowTopLabel: UILabel!
    
    
    @IBOutlet weak var ThirdRowMsg: UILabel!
    
    
    @IBOutlet weak var ThirdRowVideo: UILabel!
    
    let userDefaults = UserDefaults.standard

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.barTintColor = .black
        title = "Contact"
        setupUi()
        //    shareLocationBtnOne.tag = 0
        
        
        locationManager.requestAlwaysAuthorization()
               locationManager.requestWhenInUseAuthorization()
               if CLLocationManager.locationServicesEnabled() {
//                   locationManager.delegate = self
                   locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
                   locationManager.startUpdatingLocation()
               }
        
    }
    
    func setupUi() {
        shareLocationOneView.layer.cornerRadius = 20
        editContactView.layer.cornerRadius = 20
        
        shareLocationtwoView.layer.cornerRadius = 20
        editContactTwoView.layer.cornerRadius = 20
        
        shareLocationThreeView.layer.cornerRadius = 20
        editContactThreeView.layer.cornerRadius = 20
        
        shareLocationBtnOne.tag = 1
        shareLocationBtnTwo.tag = 2
        shareLocationBtnThree.tag = 3
        
        editContactOne.tag = 1
        editContactTwo.tag = 2
        editContactThree.tag = 3
        
        callContactOne.tag = 1
        callContactTwo.tag = 2
        callContactThree.tag = 3
        
        messageContactOne.tag = 1
        messageContactTwo.tag = 2
        messageContactThree.tag = 3
        
        videoContactOne.tag = 1
        videoContactTwo.tag = 2
        videoContactThree.tag = 3
        
        
    }
    
    @IBAction func actionForCallBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CustomPopUpViewController") as! CustomPopUpViewController
        vc.customAlertScenario = .call911
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func actionForSendLocationBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CustomPopUpViewController") as! CustomPopUpViewController
        vc.customAlertScenario = .sendLocation
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func actionForEditContact(_ sender: UIButton) {
        if sender.tag == 1 {
            print("111111")
            let vc = self.storyboard?.instantiateViewController(identifier: "EnterContactsVC1") as! EnterContactsVC1
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
        } else if sender.tag == 2 {
            print("22222")
            let vc = self.storyboard?.instantiateViewController(identifier: "EnterContactsVC2") as! EnterContactsVC2
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
        } else if sender.tag == 3 {
            print("33333")
            let vc = self.storyboard?.instantiateViewController(identifier: "EnterContactsVC3") as! EnterContactsVC3
            vc.modalTransitionStyle = .crossDissolve
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let usernameStr1 = userDefaults.string(forKey: "myContactUserNameKey1")
        
        
        let usernameStr2 = userDefaults.string(forKey: "myContactUserNameKey2")

        let usernameStr3 = userDefaults.string(forKey: "myContactUserNameKey3")

        ContactUserNameLabel1.text = "Call \(usernameStr1 ?? "NoName")"
        
        Contact1stRowNameLabel.text = " \(usernameStr1 ?? "NoName")"
        
        Contact1stRowMessage.text = "Message \(usernameStr1 ?? "NoName")"

        Contact1stRowVideo.text = "Video \(usernameStr1 ?? "NoName")"
        
        
        
        
        ContactUserNameLabel2.text = "Call \(usernameStr2 ?? "NoName")"
        
        MsgIn2ndRow.text = "Message \(usernameStr2 ?? "NoName")"
        
        VideoIn2ndRow.text = "Video \(usernameStr2 ?? "NoName")"
        

        
        
        

        ContactUserNameLabel3.text = "Call \(usernameStr3 ?? "NoName")"
        
        ThirdRowVideo.text = "Call \(usernameStr3 ?? "NoName")"

        
        ThirdRowMsg.text = "Call \(usernameStr3 ?? "NoName")"

        ThirdRowTopLabel.text = " \(usernameStr3 ?? "NoName")"

        
       

        
        
        // Hides the stop icon
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        if let usernameStr = userDefaults.string(forKey: "myContactUserNameKey3") {
//            ContactUserNamelabel3.text = "Call \(usernameStr)!"
//        }
//        // Hides the stop icon
//    }
    
    //    @IBAction func editContactBtnOne(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //        let EmergencyContactName = textInputMode
    //        let EmergencyContactNumber = textInputMode
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    //
    //    @IBAction func editContactBtnTwo(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //        let EmergencyContactName = textInputMode
    //        let EmergencyContactNumber = textInputMode
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    //
    //    @IBAction func editContactBtnThree(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //        let EmergencyContactName = textInputMode
    //        let EmergencyContactNumber = textInputMode
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    //
    //    @IBAction func shareLocationBtnOne(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //       // vc.customAlertScenario = .sendLocation
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    //
    //    @IBAction func shareLocationBtnTwo(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //        //vc.customAlertScenario = .sendLocation
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    //
    //    @IBAction func shareLocationBtnThree(_ sender:Any){
    //        let vc = self.storyboard?.instantiateViewController(identifier: "EditDetailsVC") as! EditDetailsVC
    //
    //       // vc.customAlertScenario = .sendLocation
    //
    //        vc.modalTransitionStyle = .crossDissolve
    //        vc.modalPresentationStyle = .overCurrentContext
    //        self.present(vc, animated: true, completion: nil)
    //    }
    
    
    @IBAction func ActionForCallUserBtn(_ sender: UIButton) {
        if sender.tag == 1 {
            print("Call--111111")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey1")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            print(ss)
            
            print(type(of: ss))

            
            
            if let phoneCallURL = URL(string: "tel://\(ss)") {
                let application:UIApplication = UIApplication.shared
                if (application.canOpenURL(phoneCallURL)) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                }
              }
            
            
            
        } else if sender.tag == 2 {
            print("Call--22222")
            
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey2")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            print(ss)
            
            print(type(of: ss))

            
            
            if let phoneCallURL = URL(string: "tel://\(ss)") {
                let application:UIApplication = UIApplication.shared
                if (application.canOpenURL(phoneCallURL)) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                }
              }
            
            
            
        } else if sender.tag == 3 {
            print("Call--33333")
            
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey3")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            print(ss)
            
            print(type(of: ss))

            
            
            if let phoneCallURL = URL(string: "tel://\(ss)") {
                let application:UIApplication = UIApplication.shared
                if (application.canOpenURL(phoneCallURL)) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                }
              }
            
            
        }
    }
    
    @IBAction func actionForMessageBtn(_ sender: UIButton) {
        if sender.tag == 1 {
            
            //
            print("Message--111111")
            
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey1")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            let sms = "sms:\(ss)&body= Hi, This is from CityGuide requesting for a Help."
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
            
            
        } else if sender.tag == 2 {
            print("Message22222")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey2")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            let sms = "sms:\(ss)&body= Hi, This is from CityGuide requesting for a Help."
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
        } else if sender.tag == 3 {
            print("Message33333")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey3")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            let sms = "sms:\(ss)&body= Hi, This is from CityGuide requesting for a Help."
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
        }
    }
    
    @IBAction func actionForVideoBtn(_ sender: UIButton) {
        if sender.tag == 1 {
            print("Video-111111")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey1")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            UIApplication.shared.openURL(NSURL(string: "facetime://\(ss)") as! URL)

            
            
            
        } else if sender.tag == 2 {
            print("Video-22222")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey2")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            UIApplication.shared.openURL(NSURL(string: "facetime://\(ss)") as! URL)

            
            
            
        } else if sender.tag == 3 {
            print("Video-33333")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey3")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            
            UIApplication.shared.openURL(NSURL(string: "facetime://\(ss)") as! URL)

            
            
        }
    }
    
    @IBAction func actionForShareLocationUser(_ sender: UIButton) {
        if sender.tag == 1 {
            print("www-111111")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey1")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            let sms = "sms:\(ss)&body= Hi, I'm stuck at this location. Kindly help!"
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
            
        } else if sender.tag == 2 {
            print("wwww-22222")
            
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey2")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            let sms = "sms:\(ss)&body= Hi, I'm stuck at this location. Kindly help!"
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
            
        } else if sender.tag == 3 {
            print("www-33333")
            
            let phoneNumber = userDefaults.string(forKey: "myContactUserNumberKey3")
            
            let ss = "\(phoneNumber ?? "23232323")"
            
            
                   
            
            let sms = "sms:\(ss)&body= Hi, I'm stuck at this location. Kindly help!"
            let strURL = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            UIApplication.shared.open(URL(string: strURL)!, options: [:], completionHandler: nil)
            
            
            
            
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
            print("locations = \(locValue.latitude) \(locValue.longitude)")
        }
}
