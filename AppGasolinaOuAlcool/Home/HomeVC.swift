//
//  HomeVC.swift
//  AppGasolinaOuAlcool
//
//  Created by Luiz Felipe Clemente Claro on 07/02/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
//    esconde a navigation bar
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidLoad() {
//        chamar as acoes do delegate
        screen?.delegate(delegate: self)
        super.viewDidLoad()
    }


}

extension HomeVC: HomeScreenDelegate {
    func tappedStartButton() {
        let vc = CalculatorVC()
//        chama a segunda tela 
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
