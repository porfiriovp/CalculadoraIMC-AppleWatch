//
//  Valor.swift
//  AWcalculadoraIMC WatchKit Extension
//
//  Created by user909043 on 2/16/18.
//  Copyright © 2018 user909043. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var descripcion: String=""
    var valorIMC: Float=0
    
    init(d: String, v: Float) {
        descripcion=d
        valorIMC=v
    }
    

}
