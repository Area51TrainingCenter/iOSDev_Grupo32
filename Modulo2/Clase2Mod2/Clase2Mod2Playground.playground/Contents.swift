import UIKit

//Value type
//Reference type

//let <#name#> = <#value#>
//var <#name#> = <#value#>

struct Avion {
    
    let nombre: String?
    let peso: Double
    var color: String
    let marca: String? = nil
    
    init?(json: [String: Any]) {
        
        guard let pesoObtenido = json["p"] as? Double else { return nil }
        
        guard let colorObtenido = json["color"] as? String else { return nil }
        
        self.nombre = json["name"] as? String
        self.peso = pesoObtenido
        self.color = colorObtenido
        
    }
    
}

var miavion = Avion(json: ["": ""])

miavion?.color = ""

//Avion(nombre: <#T##String?#>, peso: <#T##Double#>, color: <#T##String#>)
