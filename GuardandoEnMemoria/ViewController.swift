//
//  ViewController.swift
//  GuardandoEnMemoria
//
//  Created by guitarrkurt on 24/03/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNombre: UITextField!
    @IBOutlet weak var textEdad: UITextField!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func guardarMemoria(sender: AnyObject) {
        let nombre = textNombre.text
        let edad = textEdad.text
        
        defaults.setInteger(NSInteger(edad!)!, forKey: "Edad")
        defaults.setObject(nombre, forKey: "Nombre")
    }

}

