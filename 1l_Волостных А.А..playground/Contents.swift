import UIKit

// 1 задание. Решение квадратного уравнения формата ax^2 + bx + c = 0

print("1 Задание.")

var a:Double = 4
var b:Double = 10
var c:Double = 2

var D = b*b - 4*a*c
if D == 0 {
    let x:Double = ( (-b + sqrt(D)) / 2*a)
    print("Корень равен: ", x)
}
if D < 0 {
    print("Корней нет.")
}
if D > 0 {
    let firstX:Double = ( (-b + sqrt(D)) / 2*a)
    let secondX:Double = ( (-b - sqrt(D)) / 2*a)
    print("Корень 1 =", firstX, "\nКорень 2 =", secondX)
}


// 2 задание. Найти площадь, периметр и гипотенузу треугольника.

print("2 Задание.")

var firstKatet:Double = 3
var secondKatet:Double = 4

var g:Double = firstKatet*firstKatet + secondKatet*secondKatet
var gipotenuza:Double = sqrt(g)
var S:Double = 0.5*firstKatet*secondKatet
var P:Double = firstKatet + secondKatet + gipotenuza

print("Гипотенуза =", gipotenuza, "\nПлощадь =", S, "\nПериметр =", P)


// 3 Задание. Найти сумму вклада через 5 лет.

print("3 Задание.")

var cash:Double = 10000
var stavka:Double = 10


stavka = stavka / 100

var year:Double = 5
repeat {
    cash = cash * stavka + cash
    year = year - 1
} while year > 0

print("Сумма вклада через 5 лет:", cash)





