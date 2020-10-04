
import Foundation
import Cocoa



enum engineState {
    case start, stop
}

enum windowsOpen {
    case open, close
}


enum trunkState {
    case full, empty
}



struct car {
    let brandAuto: String
    var color : String
    mutating func changeColor(c:String){
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "green":
            self.color = "green"
        case  "gray":
        self.color = "gray"
            
        default:
            print("Error")
        }
    
    }
    
    let yearOfManufacture: Int
    
    var trunkVolume: Double{
        willSet{
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print("\(brandAuto) trunk free: \(space)")
            } else { print("\(brandAuto) trunk is full ")}
        }
    }
    var engineState: engineState {
        willSet {
            if newValue == .start {
                print("\(brandAuto) engine is on ")
            } else { print("\(brandAuto) engine is off ")}
        }
    }
    var windowsOpen: windowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandAuto) windows are open ")
            } else { print("\(brandAuto) windows are close ")
                    }
                }
            }
    var trunkState: trunkState
    mutating func emptyTrunk(){
        self.trunkState = .empty
        print("\(brandAuto) trunk is empty ")
    }
        
            }
    struct truck {
        let brandTruck: String
        var color: String
        mutating func cahanageColor(c:String){
            switch c {
            case "white":
                self.color = "white"
                case "black":
                    self.color = "black"
                case "green":
                    self.color = "green"
                case  "gray":
                self.color = "gray"
            default:
                print("Error")
            }
        }
        let yearOfManufacture: Int
        var trunkVolume: Double{
            willSet{
                if (trunkState == .empty ) && (trunkVolume >  0 ) && (trunkVolume != 0 ) && (newValue < trunkVolume ){
                     let space = trunkVolume - newValue
                    print("\(brandTruck) trunk free:\(space)")
                } else {print("\(brandTruck)trunk is full ")}
            }
            
        }
        var engineState: engineState{
            willSet {
                if newValue == .start {
                    print("\(brandTruck) engine is on")
                } else { print("\(brandTruck) engine is off ")}
            }
        }
        var windowsOpen: windowsOpen{
            willSet {
                if newValue == .open {
                    print("\(brandTruck) windows are open ")
                }else{ print ("\(brandTruck) windows are close ")}
            }
        }
        var trunkState: trunkState
        mutating func emptyTrunk(){
            self.trunkState = .empty
            print("\(brandTruck) trunk is empty" )
        
        
        }
}


var car1 = car(brandAuto: "Mustang",  color: "yellow", yearOfManufacture: 2018, trunkVolume: 63.0 , engineState: .start, windowsOpen: .open, trunkState: .empty)
var car2 = car(brandAuto: "Ferrari",  color: "black", yearOfManufacture: 2020, trunkVolume: 0.0, engineState: .stop, windowsOpen: .close, trunkState: .full)

var truck1 = truck(brandTruck: "Daf",  color: "clear", yearOfManufacture: 20119, trunkVolume: 340000.0, engineState: .start, windowsOpen: .open, trunkState: .full)
var truck2 = truck(brandTruck: "Volvo",  color: "clear", yearOfManufacture: 2015, trunkVolume: 450000.0, engineState: .start, windowsOpen: .close, trunkState: trunkState.empty)
car1.changeColor(c: "green")
car1.trunkVolume = 20000.0
car1.engineState = .stop
car2.changeColor(c: "white")
car2.trunkState = .empty
car2.trunkVolume = 0.0


truck1.cahanageColor(c: "gray")
truck1.trunkVolume = 2500000.0
truck1.windowsOpen = .close
truck2.cahanageColor(c: "black")
truck2.engineState = .start
truck2.trunkState = .full

