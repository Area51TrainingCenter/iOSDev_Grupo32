//
//  Persona.swift
//  Clase3Mod2
//
//  Created by alumno on 11/19/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import Foundation

enum PersonaStatus {
    
    case soltero
    case casado
    case feliz
    
}

struct Persona {
    
    let nombre: String
    let pais: String
    let status: PersonaStatus = .soltero
    
    init(nombre: String, pais: String) {
        self.nombre = nombre
        self.pais = pais

    }
    
    init(data: [String: Any]) {
        self.nombre = ""
        self.pais = ""
    }
    
}

extension Persona {
    
    static func data() -> [Persona] {
        
        let p1 = Persona(nombre: "Pepe", pais: "UK")
        let p2 = Persona(nombre: "Michael", pais: "US")
        return [p1, p2]
        
    }
    
}

/*
protocol Human {
    var name: String { get }
    var edad: Int { get }
}

struct Employee: Human {
    
    var name: String
    var edad: Int
    let startTime: Date
    
}*/
