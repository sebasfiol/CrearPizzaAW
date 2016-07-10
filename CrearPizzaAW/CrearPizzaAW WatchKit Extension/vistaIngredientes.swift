//
//  vistaIngredientes.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 4/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientes: WKInterfaceController {

  
    @IBOutlet var pickerIngredientes: WKInterfacePicker!
    @IBOutlet var numeroIngredientes: WKInterfaceLabel!
    @IBOutlet var anyadirIngredientes: WKInterfaceButton!
    @IBOutlet var quitarIngredientes: WKInterfaceButton!
    @IBOutlet var siguiente: WKInterfaceButton!
    
    var contadorIngredientes:Int=0
    var ingrediente:String=""
    var tamanyo:String=""
    var masa:String=""
    var queso:String=""
    
    var listaIngredientes: [(String, String)] = [
        ("1", "Jamón"),
        ("2", "Pepperoni"),
        ("3", "Pavo"),
        ("4", "Salchicha"),
        ("5", "Aceituna"),
        ("6", "Cebolla"),
        ("7", "Pimiento"),
        ("8", "Piña"),
        ("9", "Anchoa"),
        ("10", "Surimi")]
    
    var ingrediente1:String=""
    var ingrediente2:String=""
    var ingrediente3:String=""
    var ingrediente4:String=""
    var ingrediente5:String=""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! PizzaQueso
        tamanyo = c.tamanyo
        masa = c.masa
        queso = c.queso
        
        ingrediente = "Jamón"
        
        let listaValores: [WKPickerItem] = listaIngredientes.map {
            let listaValor = WKPickerItem()
            listaValor.caption = $0.0
            listaValor.title = $0.1
            return listaValor
        }
        pickerIngredientes.setItems(listaValores)
        
        siguiente.setEnabled(false)
        quitarIngredientes.setEnabled(false)
    }

    @IBAction func pickerCambio(value: Int) {
        ingrediente=listaIngredientes[value].1

    }
    
    @IBAction func pulsarSiguiente() {
        let valorIngredientes = PizzaIngredientes(t: tamanyo, m:masa, q:queso, i1:ingrediente1
                                                , i2: ingrediente2, i3: ingrediente3, i4: ingrediente4, i5: ingrediente5)
        pushControllerWithName("TipoConfirmacion", context: valorIngredientes)

    }
    
    @IBAction func anyadirIngrediente() {
        contadorIngredientes = contadorIngredientes + 1
        if contadorIngredientes > 0 && contadorIngredientes < 6 {
            siguiente.setEnabled(true)
        } else {
            siguiente.setEnabled(false)
        }
        if contadorIngredientes == 1 {
            ingrediente1 = ingrediente
            numeroIngredientes.setText(String(contadorIngredientes))
            quitarIngredientes.setEnabled(true)
            return
        }
        if contadorIngredientes == 2 {
            ingrediente2 = ingrediente
            numeroIngredientes.setText(String(contadorIngredientes))
            return
        }
        if contadorIngredientes == 3 {
            ingrediente3 = ingrediente
            numeroIngredientes.setText(String(contadorIngredientes))
            return
        }
        if contadorIngredientes == 4 {
            ingrediente4 = ingrediente
            numeroIngredientes.setText(String(contadorIngredientes))
            return
        }
        if contadorIngredientes == 5 {
            ingrediente5 = ingrediente
            numeroIngredientes.setText(String(contadorIngredientes))
            anyadirIngredientes.setEnabled(false)
            return
        }
    }
    
    @IBAction func quitarIngrediente() {
        if contadorIngredientes == 1 {
            ingrediente1 = ""
        }
        if contadorIngredientes == 2 {
            ingrediente2 = ""
        }
        if contadorIngredientes == 3 {
            ingrediente3 = ""
        }
        if contadorIngredientes == 4 {
            ingrediente4 = ""
        }
        if contadorIngredientes == 5 {
            ingrediente5 = ""
        }
        contadorIngredientes = contadorIngredientes - 1
        numeroIngredientes.setText(String(contadorIngredientes))
        if contadorIngredientes > 0 {
            siguiente.setEnabled(true)
        } else {
            siguiente.setEnabled(false)
            quitarIngredientes.setEnabled(false)
        }
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
