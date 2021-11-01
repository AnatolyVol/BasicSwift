import UIKit

struct SportCar {
    var brand: String
    var year: Int
    var volumeBody: volumeBody
    var engine: engine
    var windows: windows
    var volumeBodyMax: Int
    
    func desc(){
        print("Автомобиль \(brand), год выпуска \(year). Двигатель \(engine.rawValue). Окна \(windows.rawValue). Кузов \(volumeBody), максимальный объем кузова \(volumeBodyMax).")
    }
    
    mutating func Eng (action: engine) {
        switch action {
            case .on:
                print(action.rawValue)
                self.engine = .on
            case .off:
                print(action.rawValue)
                self.engine = .off
        }
    }
    
    
    mutating func Wind (action: windows) {
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

struct TrunkCar {
    var brand: String
    var year: Int
    var volumeBody: volumeBody
    var engine: engine
    var windows: windows
    var volumeBodyMax: Int
    
    func desc(){
        print("Автомобиль \(brand), год выпуска \(year). Двигатель \(engine.rawValue). Окна \(windows.rawValue). Кузов \(volumeBody), максимальный объем кузова \(volumeBodyMax).")
    }
    
    mutating func Eng (action: engine) {
        switch action {
            case .on:
                print(action.rawValue)
                self.engine = .on
            case .off:
                print(action.rawValue)
                self.engine = .off
        }
    }
    
    mutating func Wind (action: windows) {
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

enum engine: String {
    case on = "Заведён"
    case off = "Выключен"
}

enum windows: String {
    case open = "Открыты"
    case close = "закрыты"
}

enum volumeBody {
    case pystoi (empty: String)
    case poln (full: String)
    case zapolnen (zapolnen: Int)
}


var mazda = SportCar (brand: "mazda", year: 2005, volumeBody: .poln(full: "Багажник полный"), engine: .off, windows: .close, volumeBodyMax: 150)

var BMW = SportCar (brand: "BMW", year: 2015, volumeBody: .zapolnen(zapolnen: 50), engine: .on, windows: .open, volumeBodyMax: 100)

BMW.desc()
mazda.desc()

var man = TrunkCar (brand: "Man", year: 2000, volumeBody: .pystoi(empty: "Пустой"), engine: .off, windows: .open, volumeBodyMax: 1000)

man.desc()

mazda.Eng(action: .on)
mazda.Wind(action: .open)

mazda.desc()
