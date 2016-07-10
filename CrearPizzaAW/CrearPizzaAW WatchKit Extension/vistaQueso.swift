//
//  vistaQueso.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 4/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {

    @IBOutlet var pickerQueso: WKInterfacePicker!
    
    var tamanyo:String=""
    var masa:String=""
    
    var listaQuesos: [(String, String)] = [
        ("1", "Mozarela"),
        ("2", "Cheddar"),
        ("3", "Parmesano"),
        ("4", "Sin queso")]
    
    var queso:String="Mozarela"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! PizzaMasa
        tamanyo = c.tamanyo
        masa = c.masa
        
        let listaValores: [WKPickerItem] = listaQuesos.map {
            let listaValor = WKPickerItem()
            listaValor.caption = $0.0
            listaValor.title = $0.1
            return listaValor
        }
        pickerQueso.setItems(listaValores)
    }

    @IBAction func pickerCambio(value: Int) {
        queso=listaQuesos[value].1
    }
    
    @IBAction func pulsarSiguiente() {
        let valorQueso = PizzaQueso(t: tamanyo, m:masa, q:queso)
        pushControllerWithName("TipoIngredientes", context: valorQueso)
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
