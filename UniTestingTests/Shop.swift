//
//  Shop.swift
//  UniTestingTests
//
//  Created by Jesus Nieves on 06/09/2022.
//

import XCTest
@testable import UniTesting

class Shop: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /*
     Se valida que al aplicar un cierto valor de descuento (expresado en CGFloat) a un Producto, este retorna el precio con el descuento aplicado
     */
    func test_aplicarDescuentoAProducto_retornaValorConDescuento() throws {
        let producto = Producto(precio: 100, nombre: "iPhone 12 Pro Max")
        let discount = producto.aplicarDescuento(descuento: 15)
        XCTAssertEqual(discount, 85)
    }
    
    /*
     se valida que al agregar una serie de Productos al CarritoDeCompras y consultar por el valor total, este devuelve la suma de todos los precios de los productos agregados.
     */
    func test_calcularPrecioTotalDelCarrito_retornaTotal() throws {
        let cart = CarritoDeCompras()
        
        let producto1 = Producto(precio: 20, nombre: "p1")
        let producto2 = Producto(precio: 50, nombre: "p2")
        let producto3 = Producto(precio: 30, nombre: "p3")

        cart.agregar(producto: producto1)
        cart.agregar(producto: producto2)
        cart.agregar(producto: producto3)
        let totalValue = cart.total()

        // THEN
        XCTAssertEqual(totalValue,100)
    }
    
    /*
     se valida que al consultar al servicio ServicioDeProductos, éste devolverá de forma asincrónica una serie de productos. Aquí se puede evaluar simplemente que la lista de productos retornada no este vacia.
     */
    func test_obtenerProductos_retornaProductos() throws {
        var products = [Producto]()
        let productService = ServicioDeProductos()
        let promise = expectation(description: "Product service called")
        
        productService.obtenerProductos { result in
            products = result
            promise.fulfill()
        }
        
        wait(for: [promise], timeout: 3)
        
        XCTAssertGreaterThan(products.count, 0)
        XCTAssertEqual(products.count, 6)

    }

}
