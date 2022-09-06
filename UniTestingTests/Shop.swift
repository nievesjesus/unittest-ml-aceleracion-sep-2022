//
//  Shop.swift
//  UniTestingTests
//
//  Created by Jesus Nieves on 06/09/2022.
//

import XCTest

class Shop: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /*
     se valida que al aplicar un cierto valor de descuento (expresado en CGFloat) a un Producto, este retorna el precio con el descuento aplicado
     */
    func test_aplicarDescuentoAProducto_retornaValorConDescuento() throws {
        
    }
    
    /*
     se valida que al agregar una serie de Productos al CarritoDeCompras y consultar por el valor total, este devuelve la suma de todos los precios de los productos agregados.
     */
    func test_calcularPrecioTotalDelCarrito_retornaTotal() throws {
        
    }
    
    /*
     se valida que al consultar al servicio ServicioDeProductos, éste devolverá de forma asincrónica una serie de productos. Aquí se puede evaluar simplemente que la lista de productos retornada no este vacia.
     */
    func test_obtenerProductos_retornaProductos() throws {
        
    }

}
