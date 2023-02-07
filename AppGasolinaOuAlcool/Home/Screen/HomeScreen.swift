//
//  HomeScreen.swift
//  AppGasolinaOuAlcool
//
//  Created by Luiz Felipe Clemente Claro on 07/02/23.
//

import UIKit


protocol HomeScreenDelegate: AnyObject {
    func tappedStartButton()
}


class HomeScreen: UIView {
    
    
    private weak var delegate: HomeScreenDelegate?
    public func delegate(delegate: HomeScreenDelegate?) {
        self.delegate = delegate
    }
    
    lazy var backGroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG HOME")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Começar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 127/255, alpha: 1.0)
// acao ao apertar o botao - ira chamar o que esta acontecendo dentro da func tappedStartButton
        button.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
        return button
        
    }()
//    trazer acao para o botao
    @objc func tappedStartButton(){
        delegate?.tappedStartButton()
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backGroundImageView)
        addSubview(logoAppImageView)
        addSubview(startButton)
//        trazer o metodo das constraints para dentro do contrutor 
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configContraints(){
        NSLayoutConstraint.activate([
//        setando as configuracoes das constraints
            backGroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backGroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 104),
            logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            backGroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            
            startButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -125),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            startButton.heightAnchor.constraint(equalToConstant: 44)
        
        ])
    }
}
