import UIKit

class car {
    var brand: String
    var year: Int
    var color: String
    var engine: engine
    var windows: windows
    
    init (brand: String, year: Int, color: String, engine: engine, windows: windows) {
        self.brand = brand
        self.year = year
        self.color = color
        self.engine = engine
        self.windows = windows
    }
    
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
    
    func desc(){
        print("Марка автомобиля \(brand), год выпуска \(year), цвет автомобиля \(color), двигатель \(engine.rawValue), окна \(windows.rawValue).")
    }
    
    func abc(action: String) {
        //Пустая функция
    }
}


enum engine: String {
    case on = "заведён"
    case off = "выключен"
}

enum windows: String {
    case open = "открыты"
    case close = "закрыты"
}


var mazda = car (brand: "mazda", year: 2005, color: "red", engine: .off, windows: .close)
mazda.desc()


class sportCar : car {
    var typeKuzov : String
    var speedMax : Int
    var steeringWheel : steeringWheel
    
    init (brand: String, year : Int, color: String, typeKuzov: String, speedMax: Int, engine: engine, windows: windows, steeringWheel: steeringWheel) {
        self.typeKuzov = typeKuzov
        self.speedMax = speedMax
        self.steeringWheel = steeringWheel
        super.init(brand: brand, year: year, color: color, engine: engine, windows: windows)
    }
    
    func nnn() {
        print("Марка автомобиля \(brand), год выпуска \(year), цвет автомобиля \(color), тип кузова \(typeKuzov), максимальная скорость \(speedMax), двиагатель \(engine.rawValue), окна \(windows.rawValue), руль \(steeringWheel.rawValue).")
    }
    
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


enum steeringWheel: String {
    case left = "левый"
    case right = "правый"
}


var honda = sportCar (brand: "honda", year: 2015, color: "green", typeKuzov: "kabriolet", speedMax: 250, engine: .on, windows: .close, steeringWheel: .right)
honda.nnn()
honda.abc(action: .left)
honda.Wind(action: .open)
honda.Eng(action: .off)


class trunkCar : car {
    var weightMax : Int
    var numWheels : Int
    var pricep : pricep
    
    init (brand: String, year: Int, color: String, weightMax: Int, numWheels: Int, engine: engine, windows: windows, pricep: pricep) {
        self.weightMax = weightMax
        self.numWheels = numWheels
        self.pricep = pricep
        super.init(brand: brand, year: year, color: color, engine: engine, windows: windows)
    }
    
    func mmm(){
        print("Марка грузовика \(brand), год выпуска \(year), цвет грузовика \(color), максимальная грузоподъемность \(weightMax), количество колёс \(numWheels), двигатель \(engine.rawValue), окна \(windows.rawValue), прицеп \(pricep.rawValue).")
    }
    
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


enum pricep : String {
    case yes = "прикреплён"
    case no = "отсутствует"
}


var man = trunkCar (brand: "MAN", year: 2020, color: "blue", weightMax: 5000, numWheels: 10, engine: .off, windows: .open, pricep: .no)
man.mmm()
man.abc(action: .yes)
man.Eng(action: .on)
man.Wind(action: .close)
