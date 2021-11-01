import UIKit
import Foundation


struct queue <Element: Comparable> {
    var items = [Element]()
    mutating func push (_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeFirst()
    }
    
    
    mutating func sort () -> [Element] {
        return items.sorted(by: <)
    }
    func filter (item: Element) {
        print(items.filter{$0 == item})
    }

}

var queueInt = queue <Int>()
queueInt.push(1)
queueInt.push(3)
queueInt.push(2)
queueInt.push(5)
queueInt.push(7)
queueInt.push(4)

print(queueInt.items)

queueInt.pop()
queueInt.pop()
queueInt.pop()

print(queueInt.items)
print(queueInt.sort())

queueInt.filter(item: 5)

