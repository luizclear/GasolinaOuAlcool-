//
//  CalculatorVC.swift
//  AppGasolinaOuAlcool
//
//  Created by Luiz Felipe Clemente Claro on 07/02/23.
//

import UIKit

class CalculatorVC: UIViewController {
    
    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}
extension CalculatorVC: CalculatorScreenDelegate {
    func tappedCalculatieButton() {
        print(#function)
    }
    
    func tappedBackButton() {
        print(#function)
    }
    
    
    
}
