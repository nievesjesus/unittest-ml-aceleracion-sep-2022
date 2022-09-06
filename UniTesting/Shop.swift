//
//  Shop.swift
//  UniTesting
//
//  Created by Jesus Nieves on 06/09/2022.
//

import UIKit

struct Producto {
    var precio: CGFloat
    var nombre: String
    
    func aplicarDescuento(descuento: CGFloat) -> CGFloat {
        let multiplicador = 1 - descuento / 100
        return precio * multiplicador
    }
}

class CarritoDeCompras {
    private var productos = [Producto]()
    
    func agregar(producto: Producto) {
        productos.append(producto)
    }
    
    func total() -> CGFloat{
        productos.map({$0.precio}).reduce(0, +)
    }
}


class ServicioDeProductos {
    var productos = [Producto]()

    func obtenerProductos(completion: @escaping ([Producto]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.productos = [
                Producto(precio: 50.0, nombre: "Luces"),
                Producto(precio: 100.0, nombre: "Pelota"),
                Producto(precio: 10.0, nombre: "Guirnaldas"),
                Producto(precio: 20.0, nombre: "Velas"),
                Producto(precio: 20.0, nombre: "Sombrilla"),
                Producto(precio: 20.0, nombre: "Velador")
            ]
            completion(self.productos)
        }
    }
}
