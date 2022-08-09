import UIKit


var name = "Noura"
var birthdayYear = 2004
var age = 18
var CurrentYear = 2022

age = CurrentYear - birthdayYear

print("Hello my name Is \(name) and my age Is \(age)")

if age >= 18 && age <= 14
{
    print("نعم يمكنك المشاركة في الكويت تبرمج")
}
else {
    print("لا يمكنك المشاركة في الكويت تبرمج")
}

var TextName = "8"
var number = 4
var DoubleNumb : Double
DoubleNumb = (Double(TextName) ?? 0) + Double(number)
