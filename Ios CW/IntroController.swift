//
//  IntroController.swift
//  Ios CW
//
//  Created by shanilka on 5/16/23.
//

import UIKit

class IntroController: UIViewController {
    
    let hello : UILabel = {
        let header1 = UILabel()
        header1.text = "Hello"
        header1.translatesAutoresizingMaskIntoConstraints = false
        header1.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        return header1
    }()
    
    let text1 : UILabel = {
        let label = UILabel()
        label.text = "I'm your personal coach"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return label
    }()
    
    let text2 : UILabel = {
        let label = UILabel()
        label.text = "Here are some questions to tailor a"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return label
    }()
    
    let text3 : UILabel = {
        let label = UILabel()
        label.text = "personalized plan for you."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        label.textColor = .blue
        return label
    }()
    
    let ready: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("I'm Ready", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.backgroundColor = .blue
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
        addConstrains()
        setupConstrains()
        
        ready.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func goToNext(){
        let vc = HomeController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func addConstrains(){
        view.addSubview(hello)
        view.addSubview(text1)
        view.addSubview(text2)
        view.addSubview(text3)
        view.addSubview(ready)
    }
    func setupConstrains(){
        
        hello.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        hello.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        hello.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        text1.topAnchor.constraint(equalTo: hello.bottomAnchor, constant: 20).isActive = true
        text1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        text1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        text2.topAnchor.constraint(equalTo: text1.bottomAnchor).isActive = true
        text2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        text2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        text3.topAnchor.constraint(equalTo: text2.bottomAnchor).isActive = true
        text3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        text3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        ready.topAnchor.constraint(equalTo: text3.bottomAnchor, constant: 30).isActive = true
        ready.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        ready.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }

}
