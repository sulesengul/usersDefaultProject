//
//  ViewController.swift
//  UsersDefaultsProjesi
//
//  Created by Şule Şengül on 15.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ilkTextFiled: UITextField!
    @IBOutlet weak var ikinciTextField: UITextField!
    @IBOutlet weak var ilkLabel: UILabel!
    @IBOutlet weak var ikinciLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        //as -> casting
        
        if let gelenNot = kaydedilenNot as? String {
            ilkLabel.text = "Yapılacak iş: \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            ikinciLabel.text = "Yapılacak zaman: \(gelenZaman)"
        }
       
        
    }
    
    @IBAction func kaydetTiklandi(_ sender: Any) {
        
        UserDefaults.standard.set(ilkTextFiled.text!, forKey: "not")
        UserDefaults.standard.set(ikinciTextField.text!, forKey: "zaman")
        
        ilkLabel.text = "Yapılacak iş: \(ilkTextFiled.text!)"
        ikinciLabel.text = "Yapılacak zaman: \(ikinciTextField.text!)"
        
    }
    
    
    
    @IBAction func silTiklandi (_ sender: Any){
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        // "" -> boş string
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            ilkLabel.text = "Yapılacak iş: "
        }
        
        if (kaydedilenZaman as? String ) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            ikinciLabel.text = "Yapılacak zaman: "  
        }
        
    }


}

