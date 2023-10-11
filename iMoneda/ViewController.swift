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
        var respuesta = self.moneda.lanzar()
        
        if respuesta == Tirada.cara {
            self.respuestaLabel.text = "Ha salido cara!"
            self.monedaImgView.image = imagenCara
        } else {
            self.respuestaLabel.text = "Ha salido cruz!"
            self.monedaImgView.image = imagenCruz
        }
    }
    
}

