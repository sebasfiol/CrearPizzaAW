//
//  vistaMasa.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 4/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {
    
    @IBOutlet var pickerMasa: WKInterfacePicker!
    
    var tamanyo:String=""
    
    var listaMasas: [(String, String)] = [
        ("1", "Delgada"),
        ("2", "Crujiente"),
        ("3", "Gruesa") ]
    
    var masa:String="Delgada"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! PizzaTamanyo
        tamanyo = c.tamanyo
        
        let listaValores: [WKPickerItem] = listaMasas.map {
            let listaValor = WKPickerItem()
            listaValor.caption = $0.0
            listaValor.title = $0.1
            return listaValor
        }
        pickerMasa.setItems(listaValores)
    }

    @IBAction func pickerCambio(value: Int) {
        masa=listaMasas[value].1
    }
    
    @IBAction func pulsarSiguiente() {
        let valorMasa = PizzaMasa(t: tamanyo, m:masa)
        pushControllerWithName("TipoQueso", context: valorMasa)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
