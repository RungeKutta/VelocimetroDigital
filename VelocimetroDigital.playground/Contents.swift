//: Playground - noun: a place where people can play

import UIKit

//Declaración de la enumeración Velocidades
enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial;
    }

}

//var velocidad : Velocidades = Velocidades.VelocidadMedia
//print(velocidad.rawValue)

//Declaración de la Clase Auto
class Auto{
    //Decladración de la variable velocidad de tipo enumeración Velocidades
    var velocidad : Velocidades
    
    //inicialización de la clase Auto con su propiedad velocidad en Apagado
    init(){
        self.velocidad = Velocidades.Apagado
    }

    /* Declaración de la funcion cambio de velocidad. Esta función lo que va a realizar es devolver la velocidad que tiene el Auto antes del cambio de velocidad y realizar el cambio de Velocidad. Esto es con la finalidad de que en la primera iteración devuelva el valor 0, Apagado */
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena:String){
        
        //declaramos la variable devuelta por la funcion
        var velocidadAntesCambio : (actual:Int, velocidadEnCadena:String)
        
        //Dependiendo de la velocidad actual realizara el cambio que le corresponda
        switch self.velocidad{
        case .Apagado:
            velocidadAntesCambio = (0, "Apagado")
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadAntesCambio = (20, "Velocidad baja")
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadAntesCambio = (50, "Velocidad media")
            self.velocidad = Velocidades.VelocidadAlta
        default:
            velocidadAntesCambio = (120, "Velocidad alta")
            self.velocidad = Velocidades.VelocidadMedia
        }
        //Devuelve la velocidad que tenía antes de realizar el cambio
        return velocidadAntesCambio
    }

}

//Declaramos un objeto de la clase Auto
var auto = Auto()

//Realizamos las 20 iteraciones e imprimimos el resultado.
for var i = 0; i < 20; i++ {

//Declaramos la variable que ejecutará y recibirá el resultado de la funcion del cambio de velocidad
var velocidadActual = auto.cambioDeVelocidad()
print ("\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}






