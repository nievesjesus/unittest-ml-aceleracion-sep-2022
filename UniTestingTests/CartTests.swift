//
//  CartTests.swift
//  UniTestingTests
//
//  Created by Jesus Nieves on 06/09/2022.
//

import XCTest
@testable import UniTesting

class CartTests: XCTestCase {

    var cart: Cart?
        
    override func setUpWithError() throws {
        // GIVEN
        cart = Cart()
    }

    // ESTO SE EJECUTA DESPUES DE CADA TEST
    override func tearDownWithError() throws {
        cart = nil
    }

    
    func testAddProduct() throws {
        // WHEN
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        
        // THEN
        XCTAssertEqual(cart?.products, 4)
    }
    
    func testRemoveProduct() throws {
        // WHEN
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        cart?.removeProduct()
        
        // THEN
        XCTAssertEqual(cart?.products,3)
    }
    
    func testRemoveAllProducts() throws {
        // WHEN
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        cart?.addProduct()
        cart?.removeAllProducts()
        
        // THEN
        XCTAssertEqual(cart?.products, 0)
    }
    
}
