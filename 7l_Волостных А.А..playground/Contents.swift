import UIKit
import Foundation

enum doesNotGo: Error {
    case noGasoline
    case fewWheels
    case noCar
}

struct Car {
    var wheels: Int
    var gasoline: Int
}

class TripByCar {
    var trip = [
        "honda": Car(wheels: 4, gasoline: 150),
        "mazda": Car(wheels: 3, gasoline: 200),
        "bmw": Car(wheels: 5, gasoline: 50),
        "vw": Car(wheels: 4, gasoline: 0)
    ]
    
    func errors(carName name: String) throws {
        guard let cars = trip[name] else {
            throw doesNotGo.noCar
        }
        guard cars.wheels >= 4 else {
            throw doesNotGo.fewWheels
        }
        guard cars.gasoline > 100 else {
            throw doesNotGo.noGasoline
        }
        
        print("поехал на  \(name)")
    }
}

let favoriteCar = [
    "max": "honda",
    "nastya": "mazda",
    "pavel": "vw"
]

func carTrip(name: String, Cars: TripByCar) throws {
    let driverName = favoriteCar[name] ?? "honda"
    try Cars.errors(carName: driverName)
}

var nameDriver = TripByCar()

do {
    try carTrip(name: "nastya", Cars: nameDriver)
} catch doesNotGo.noCar {
    print("нет такой машины")
} catch doesNotGo.fewWheels {
    print("у машины мало колёс")
} catch doesNotGo.noGasoline {
    print("мало топлива")
}

