//
//  ViewController.swift
//  NotApp
//
//  Created by Hilal Öztemel on 21.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldYapilacakIş: UITextField!
    
    @IBOutlet weak var textFieldNeZamanaYapilmali: UITextField!
    
    @IBOutlet weak var labelYapilacakIş: UILabel!
    
    @IBOutlet weak var labelYapilacakZaman: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String {
            labelYapilacakIş.text = "Yapılacak iş : \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            labelYapilacakZaman.text = "Yapılacak zaman : \(gelenZaman)"
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(textFieldYapilacakIş.text!, forKey: "not")
        UserDefaults.standard.set(textFieldNeZamanaYapilmali.text!, forKey: "zaman")
        
        labelYapilacakIş.text = "Yapılacak iş : \(textFieldYapilacakIş.text!)"
        labelYapilacakZaman.text = "Yapılacak Zaman : \(textFieldNeZamanaYapilmali.text!)"
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if kaydedilenNot as? String != nil{
            UserDefaults.standard.removeObject(forKey: "not")
            labelYapilacakIş.text = "Yapılacak iş : "
        }
        
        if kaydedilenZaman as? String != nil{
            UserDefaults.standard.removeObject(forKey: "zaman")
            labelYapilacakZaman.text = "Yapılacak zaman : "
        }
            
    }
}

