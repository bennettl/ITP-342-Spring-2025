//
//  CalculatorViewModel.swift
//  CalculatorApp
//
//  Created by Bennett Lee on 2/12/25.
//

import Foundation

@Observable
class CalculatorViewModel {
    var numberOne = ""
    var numberTwo = ""
    var result = ""

    func add() {
        // Validation -> Early Return
        guard let numOne = Double(numberOne), let numTwo = Double(numberTwo) else {
            return
        }

        result = "\(numOne + numTwo)"
    }
}

// Older
//class CalculatorViewModel : ObservableObject {
//    @Published var numberOne = ""
//    @Published var numberTwo = ""
//    @Published var result = ""
//
//    func add() {
//        // Validation -> Early Return
//        guard let numOne = Double(numberOne), let numTwo = Double(numberTwo) else {
//            return
//        }
//
//        result = "\(numOne + numTwo)"
//    }
//}


