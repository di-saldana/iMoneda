//
//  ViewController.swift
//  iMoneda
//
//  Created by Máster Móviles on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    let moneda = Moneda()
    
    @IBOutlet weak var monedaImgView: UIImageView!
    @IBOutlet weak var respuestaLabel: UILabel!
    
    let imagenCara = UIImage(named:"cara")
    let imagenCruz = UIImage(named:"cruz")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func botonPulsado(_ sender: Any) {
        let respuesta = self.moneda.lanzar()
        
        if respuesta == Tirada.cara {
            self.respuestaLabel.text = String(format: NSLocalizedString("cara", comment: ""))
            self.monedaImgView.image = imagenCara
        } else {
            self.respuestaLabel.text = String(format: NSLocalizedString("cruz", comment: ""))
            self.monedaImgView.image = imagenCruz
        }
    }
    
}

