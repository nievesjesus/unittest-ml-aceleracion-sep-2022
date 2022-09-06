//
//  UniTestingTests.swift
//  UniTestingTests
//
//  Created by Jesus Nieves on 06/09/2022.
//

import XCTest
@testable import UniTesting

class UniTestingTests: XCTestCase {

    // ESTO SE EJECUTA ANTES DE CADA TEST
    override func setUpWithError() throws {
    }

    // ESTO SE EJECUTA DESPUES DE CADA TEST
    override func tearDownWithError() throws {
    }


    func testBoolean() throws {
        let condition = 2 == 2
        XCTAssert(condition)
        XCTAssertTrue(condition)
        //XCTAssertFalse(condition)
    }
    
    func testNil() throws {
        let expresion: String? = nil
        XCTAssertNil(expresion)
        // XCTAssertNotNil(expresion)
    }
    
    
    func testEqual() throws {
        XCTAssertEqual(2, 2)
        XCTAssertNotEqual("Hola", "Hi", "El mensaje es diferente por que esta en otro idioma")
    }
    
    func testGreaterThanEqual() throws {
        
        let list = [1,2,3,4,5]
        
        XCTAssertGreaterThan(10, 1)
        XCTAssertGreaterThanOrEqual(3, 2)
                //item en la lista < 20
        XCTAssertLessThan(list.count,20)

    }
    
//    func testAPICall() throws {
//        let url = URL(string: "http://www.randomnumberapi.com/test")!
//        let estado: Int?
//
//        // GIVEN
//        let promesa = expectation(description: "El servicio fue llamado.")
//
//        // When
//        servicio.obtener(url: url) { codigoDeEstado in {
//              self.estado = codigoDeEstado
//             promesa.fulfill()
//        }
//
//        wait(for: [promesa, promse2, promse4], timeout: 5)
//
//        //Then
//        XCTAssertEqual(estado, 200)
//
//    }
    
}
