//
//  InterfaceController.swift
//  AWcalculadoraIMC WatchKit Extension
//
//  Created by user909043 on 2/13/18.
//  Copyright © 2018 user909043. All rights reserved.
//

import WatchKit
import Foundation




class InterfaceController: WKInterfaceController {
    
    var pesoActual:Float=1
    var estaturaActual:Float=1
    
    

    @IBOutlet var valorPeso: WKInterfaceLabel!
    
    @IBOutlet var valorEstatura: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    
    
    @IBAction func accionCalcular() {
        let resultado = calcularIMC (peso: pesoActual, estatura: estaturaActual)
        let valorContexto=Valor(d:"Peso Normal",v:resultado)
        pushController(withName: "identificadorValor", context: valorContexto)
        print(resultado)
    }
    
    func calcularIMC (peso: Float, estatura: Float)-> Float {
        let IMC=peso/(estatura*estatura)
        return IMC
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoValorEstatura(_ value: Float) {
        estaturaActual=value/100
        valorEstatura.setText(String(estaturaActual))
            }
    
    @IBAction func nuevoValorPeso(_ value: Float) {
        
        valorPeso.setText(String(pesoActual))
        pesoActual=value
    }
}
