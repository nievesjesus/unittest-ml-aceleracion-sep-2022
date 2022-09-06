//
//  Cart.swift
//  UniTesting
//
//  Created by Jesus Nieves on 06/09/2022.
//

import Foundation

class Cart {
    
    var products = 0
    
    func addProduct(){
        products += 1
    }
    
    func removeProduct(){
        products = (products > 0) ? products - 1 : products
    }
    
    func removeAllProducts(){
        products = 0
    }
    
}
