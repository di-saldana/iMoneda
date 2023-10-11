//
//  Moneda.swift
//  iMoneda
//
//  Created by Máster Móviles on 11/10/23.
//

import Foundation

enum Tirada: String {
    case cara, cruz
}

class Moneda {
    
    func lanzar() -> Tirada {
        let  tirada = Bool.random()
        var resultado: Tirada
        
        if tirada {
            resultado = Tirada.cara
        } else {
            resultado = Tirada.cruz
        }
        
        return resultado
    }
}
