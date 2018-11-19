import UIKit

//Constante
let constante = 10
let constante2: Int = 5
//constante = 4

//Variable
var variable = 10
var variable2: Int = 5
variable = 4

//Optionals
var numeroDeDNI: Int? = 3266
numeroDeDNI = nil
//numeroDeDNI = 2
print(numeroDeDNI)

var numeroDePlaca: Int! = 3477
//numeroDePlaca = nil

//let result = variable + numeroDeDNI

if let _ = numeroDePlaca {
    //print(v)
}else {
    print("es nulo")
}


/*
if condition {
    
}else {
    
}*/


//Métodos

func nombreMetodo() {}
func nombreConParametros(param1:String) {}
func nombreParametros(param1: String, param2: Int) {}
func nombreConRetorno() -> Int { return 3 }

nombreConParametros(param1: "")

func addAction(_ action: String) {
    action
}
func addAction(action: String) {
    action
}

func addAction(at n: String) {}

addAction("")
addAction(action: "")
addAction(at: "")
