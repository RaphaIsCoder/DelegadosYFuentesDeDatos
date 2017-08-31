/*
 
 ## El Entendimiento Completo de Delegado y Fuente de Datos de Swift
 Tutorial completo originalmente publicado en Medium por Bob Lee
 Traducido por Raphael Hidalgo
 -Última actualización en Mayo, 2017
 -Swift 3 & iOS 10
 
 
 */
import UIKit

//: Diseña de PrimeroControlador
protocol DelegadoDePrimeroControlador {
    func pasarDatos(datos: String) -> String
}

//: Diseña de Delegador
class PrimerControlador {
    var datosDeSecretario: String?
    var delegado: DelegadoDePrimeroControlador?
}

//: Diseña Delegado
class SegundoControlador: DelegadoDePrimeroControlador {
    func pasarDatos(datos: String) -> String {
        print("El CEO me dio \(datos)")
        return "Demasiado trabajo"
    }
}

//: Crear los Objetos
let primerControlador = PrimerControlador()
let segundoControlador = SegundoControlador()

//: Asignar el Delegado
primerControlador.delegado = segundoControlador

//: Enviar Datos
primerControlador.datosDeSecretario = primerControlador.delegado?.pasarDatos(datos: "un mónton de contractos")
print(primerControlador.datosDeSecretario!)




//: Extra Ejemplo
/*
 import UIKit
 
 class BobControlador: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
 override func viewDidLoad() {
 super.viewDidLoad()
 tableView.delegate = self
 }
 
 override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 print("¡Por qué me oprimes!")
 }
 
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return 1992
 }
 }
 */
