import UIKit

// 1 Задание. Функция на определение чётности числа.

func evenNotEven (Number a : Int) -> Void {
    a % 2 == 0 ? print("Число чётное") : print("Число нечётное")
}

evenNotEven(Number: 10)
evenNotEven(Number: 7)

// 2 Задание. Функция на проверку деления на 3.

func division (Number a : Int) -> Void {
    let b = a % 3
    switch b {
    case 0:
        print("Делится без остатка")
    default:
        print("Не делится без остатка")
    }
}

division(Number: 12)
division(Number: 10)

// 3 Задание. Возрастающий массив из 100 чисел.

var Array: [Int] = []

var i = 1
while i <= 100 {
    Array.append(i)
    i += 1
}

print(Array)

// 4 Задание. Удаление из массива.

print("Не получилось сделать это задание.")

// 5 Задание. Массив чисел Фибоначи.

var ArrayFib: [Int] = [0, 1]

func Fib () -> Void {
    for _ in 1...50 {
        ArrayFib.append(ArrayFib[ArrayFib.count - 1] + ArrayFib[ArrayFib.count - 2])
    }
}

Fib()
print(ArrayFib)
