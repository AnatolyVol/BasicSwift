import UIKit

protocol Car1: AnyObject {
    var brand: String { get }
    var year: Int { get }
    var color: String { get }
    var windows: windows { get set }
    var engine: engine { get set }
    
}

enum engine: String {
    case on = "заведён"
    case off = "выключен"
}

enum windows: String {
    case open = "открыты"
    case close = "закрыты"
}


extension Car1 {
    func Eng (action: engine) {
        switch action {
            case .on:
                print(action.rawValue)
                self.engine = .on
            case .off:
                print(action.rawValue)
                self.engine = .off
        }
    }
    
    func Wind (action: windows) {
        switch action {
            case .open:
                print(action.rawValue)
                self.windows = .open
            case .close:
                print(action.rawValue)
                self.windows = .close
        }
    }
}


protocol sportCar : Car1 {
    var typeKuzov : String { get }
    var speedMax : Int { get }
    var steeringWheel : steeringWheel { get set }
}

enum steeringWheel: String {
    case left = "левый"
    case right = "правый"
}

extension sportCar {
    func abc(action: steeringWheel) {
        switch action {
        case .left:
            print(action.rawValue)
            self.steeringWheel = .left
        case .right:
            print(action.rawValue)
            self.steeringWheel = .right
        }
    }
}

protocol trunkCar : Car1 {
    var weightMax : Int { get }
    var numWheels : Int { get }
    var pricep : pricep { get set }
}

enum pricep : String {
    case yes = "прикреплён"
    case no = "отсутствует"
}

extension trunkCar {
    func abc(action: pricep) {
        switch action {
        case .yes:
            print(action.rawValue)
            self.pricep = .yes
        case .no:
            print(action.rawValue)
            self.pricep = .no
        }
    }
}

class sportCar1: Car1 {
    var typeKuzov : String
    var speedMax : Int
    var steeringWheel : steeringWheel
    var brand: String
    var year: Int
    var color: String
    var windows: windows
    var engine: engine
    
    init (brand: String, year : Int, color: String, typeKuzov: String, speedMax: Int, engine: engine, windows: windows, steeringWheel: steeringWheel) {
        self.brand = brand
        self.year = year
        self.color = color
        self.engine = engine
        self.windows = windows
        self.typeKuzov = typeKuzov
        self.speedMax = speedMax
        self.steeringWheel = steeringWheel
        
    }
}

class trunkCar1: Car1 {
    var brand: String
    var year: Int
    var color: String
    var windows: windows
    var engine: engine
    var weightMax : Int
    var numWheels : Int
    var pricep : pricep
    
    init (brand: String, year: Int, color: String, weightMax: Int, numWheels: Int, engine: engine, windows: windows, pricep: pricep) {
        self.weightMax = weightMax
        self.numWheels = numWheels
        self.pricep = pricep
        self.brand = brand
        self.year = year
        self.color = color
        self.engine = engine
        self.windows = windows
    }
}

extension sportCar1: CustomStringConvertible {
    var description: String {
        return "Марка автомобиля \(brand), год выпуска \(year), цвет автомобиля \(color), тип кузова \(typeKuzov), максимальная скорость \(speedMax), двиагатель \(engine.rawValue), окна \(windows.rawValue), руль \(steeringWheel.rawValue)."
    }
}

extension trunkCar1: CustomStringConvertible {
    var description: String {
        return "Марка грузовика \(brand), год выпуска \(year), цвет грузовика \(color), максимальная грузоподъемность \(weightMax), количество колёс \(numWheels), двигатель \(engine.rawValue), окна \(windows.rawValue), прицеп \(pricep.rawValue)."
    }
}

var honda = sportCar1(brand: "honda", year: 2020, color: "red", typeKuzov: "kabriolet", speedMax: 250, engine: .on, windows: .close, steeringWheel: .right)

var man = trunkCar1(brand: "MAN", year: 2005, color: "blue", weightMax: 5000, numWheels: 10, engine: .off, windows: .open, pricep: .yes)

print(man)
print(honda)

