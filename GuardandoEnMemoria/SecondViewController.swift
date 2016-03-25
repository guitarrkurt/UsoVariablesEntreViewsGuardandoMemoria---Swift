//
//  SecondViewController.swift
//  GuardandoEnMemoria
//
//  Created by guitarrkurt on 24/03/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelNombre: UILabel!
    @IBOutlet weak var labelEdad: UILabel!
    let defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func show(sender: AnyObject) {
        let nombre = defaults.objectForKey("Nombre") as! String
        let edad = defaults.integerForKey("Edad")
        
        labelNombre.text = "Nombre: \(nombre)"
        labelEdad.text = "Edad: \(edad)"
    }
}
