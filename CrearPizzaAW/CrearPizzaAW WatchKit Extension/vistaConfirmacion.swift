//
//  vistaConfirmacion.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 10/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacion: WKInterfaceController {

    @IBOutlet var tamanyo: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingrediente1: WKInterfaceLabel!
    @IBOutlet var ingrediente2: WKInterfaceLabel!
    @IBOutlet var ingrediente3: WKInterfaceLabel!
    @IBOutlet var ingrediente4: WKInterfaceLabel!
    @IBOutlet var ingrediente5: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! PizzaIngredientes
        tamanyo.setText(c.tamanyo)
        masa.setText(c.masa)
        queso.setText(c.queso)
        ingrediente1.setText(c.ingrediente1)
        ingrediente2.setText(c.ingrediente2)
        ingrediente3.setText(c.ingrediente3)
        ingrediente4.setText(c.ingrediente4)
        ingrediente5.setText(c.ingrediente5)
        
        // Configure interface objects here.
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
