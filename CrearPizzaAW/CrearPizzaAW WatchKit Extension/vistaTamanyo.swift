//
//  vistaTamanyo.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 4/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit
import Foundation


class vistaTamanyo: WKInterfaceController {

    @IBOutlet var pickerTamanyo: WKInterfacePicker!
    
    var listaTamanyos: [(String, String)] = [
        ("1", "Pequeña"),
        ("2", "Mediana"),
        ("3", "Grande") ]
    var tamanyo:String="Pequeña"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let listaValores: [WKPickerItem] = listaTamanyos.map {
            let listaValor = WKPickerItem()
            listaValor.caption = $0.0
            listaValor.title = $0.1
            return listaValor
        }
        pickerTamanyo.setItems(listaValores)
    }
    @IBAction func pickerCambio(value: Int) {
        tamanyo=listaTamanyos[value].1
    }
    
    @IBAction func pulsarSiguiente() {
        let valorTamanyo = PizzaTamanyo(t: tamanyo)
        pushControllerWithName("TipoMasa", context: valorTamanyo)
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
