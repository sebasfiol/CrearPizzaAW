//
//  PizzaIngredientes.swift
//  CrearPizzaAW
//
//  Created by SebasFiol on 10/7/16.
//  Copyright © 2016 SebasFiol. All rights reserved.
//

import WatchKit

class PizzaIngredientes: NSObject {
    var tamanyo:String=""
    var masa:String=""
    var queso:String=""
    var ingrediente1:String=""
    var ingrediente2:String=""
    var ingrediente3:String=""
    var ingrediente4:String=""
    var ingrediente5:String=""
    
    init(t:String, m:String, q:String, i1:String, i2:String, i3:String, i4:String, i5:String){
        tamanyo = t
        masa = m
        queso = q
        ingrediente1 = i1
        ingrediente2 = i2
        ingrediente3 = i3
        ingrediente4 = i4
        ingrediente5 = i5
    }


}
