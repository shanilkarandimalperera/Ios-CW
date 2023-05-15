//
//  HomeController.swift
//  Ios CW
//
//  Created by shanilka on 5/14/23.
//

import UIKit

class HomeController: UIViewController {
    
    let header1 : UILabel = {
        let header1 = UILabel()
        header1.text = "GYM"
        header1.translatesAutoresizingMaskIntoConstraints = false
        header1.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        return header1
    }()
    
    let header2 : UILabel = {
        let header2 = UILabel()
        header2.text = "FITNESS"
        header2.translatesAutoresizingMaskIntoConstraints = false
        header2.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        header2.textColor = .blue
        return header2
    }()
    
    let namelabel : UILabel = {
        let namelabel = UILabel()
        namelabel.text = "Enter Your Name:"
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let name: UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.borderStyle = .roundedRect
        name.layer.borderWidth = 1.0
        name.layer.cornerRadius = 10.0
        name.layer.borderColor = UIColor.blue.cgColor
        name.keyboardType = .alphabet
        name.becomeFirstResponder()
        return name
    }()
    
    let agelabel : UILabel = {
        let agelabel = UILabel()
        agelabel.text = "Enter Your Age:"
        agelabel.translatesAutoresizingMaskIntoConstraints = false
        return agelabel
    }()
    
    let age: UITextField = {
        let age = UITextField()
        age.translatesAutoresizingMaskIntoConstraints = false
        age.borderStyle = .roundedRect
        age.layer.borderWidth = 1.0
        age.layer.cornerRadius = 10.0
        age.layer.borderColor = UIColor.blue.cgColor
        age.keyboardType = .numberPad
        age.becomeFirstResponder()
        return age
    }()
    
    let heightlabel : UILabel = {
        let heightlabel = UILabel()
        heightlabel.text = "Enter Your Height:"
        heightlabel.translatesAutoresizingMaskIntoConstraints = false
        return heightlabel
    }()
    
    let height: UITextField = {
        let height = UITextField()
        height.translatesAutoresizingMaskIntoConstraints = false
        height.borderStyle = .roundedRect
        height.layer.borderWidth = 1.0
        height.layer.cornerRadius = 10.0
        height.layer.borderColor = UIColor.blue.cgColor
        height.keyboardType = .alphabet
        height.becomeFirstResponder()
        return height
    }()
    
    let heightvalue: UITextField = {
        let heightvalue = UITextField()
        heightvalue.translatesAutoresizingMaskIntoConstraints = false
        heightvalue.borderStyle = .roundedRect
        heightvalue.layer.borderWidth = 1.0
        heightvalue.layer.cornerRadius = 10.0
        heightvalue.layer.borderColor = UIColor.blue.cgColor
        heightvalue.keyboardType = .numberPad
        heightvalue.becomeFirstResponder()
        heightvalue.isUserInteractionEnabled = false
        heightvalue.inputView = nil
        heightvalue.inputAccessoryView = nil
        heightvalue.text = "CM"
        return heightvalue
    }()

    
    let Hstack : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        return Hstack
    }()
    
    
    let weightlabel : UILabel = {
        let weightlabel = UILabel()
        weightlabel.text = "Enter Your Weight:"
        weightlabel.translatesAutoresizingMaskIntoConstraints = false
        return weightlabel
    }()
    
    let weight: UITextField = {
        let weight = UITextField()
        weight.translatesAutoresizingMaskIntoConstraints = false
        weight.borderStyle = .roundedRect
        weight.layer.borderWidth = 1.0
        weight.layer.cornerRadius = 10.0
        weight.layer.borderColor = UIColor.blue.cgColor
        weight.keyboardType = .numberPad
        weight.becomeFirstResponder()
        return weight
    }()
    
    let weightvalue: UITextField = {
        let weightvalue = UITextField()
        weightvalue.translatesAutoresizingMaskIntoConstraints = false
        weightvalue.borderStyle = .roundedRect
        weightvalue.layer.borderWidth = 1.0
        weightvalue.layer.cornerRadius = 10.0
        weightvalue.layer.borderColor = UIColor.blue.cgColor
        weightvalue.keyboardType = .numberPad
        weightvalue.becomeFirstResponder()
        weightvalue.isUserInteractionEnabled = false
        weightvalue.inputView = nil
        weightvalue.inputAccessoryView = nil
        weightvalue.text = "KG"
        return weightvalue
    }()

    
    let Hstackw : UIStackView = {
        let Hstackw = UIStackView()
        Hstackw.translatesAutoresizingMaskIntoConstraints = false
        Hstackw.axis =  .horizontal
        return Hstackw
    }()
    
    let genderlabel : UILabel = {
        let genderlabel = UILabel()
        genderlabel.text = "Select Your Gender:"
        genderlabel.translatesAutoresizingMaskIntoConstraints = false
        return genderlabel
    }()
    
    let selectButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Select Gender", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(showOptions), for: .touchUpInside)
        return button
    }()
    
    let gender: UITextField = {
        let gender = UITextField()
        gender.translatesAutoresizingMaskIntoConstraints = false
        gender.borderStyle = .roundedRect
        gender.layer.borderWidth = 1.0
        gender.layer.cornerRadius = 10.0
        gender.layer.borderColor = UIColor.blue.cgColor
        gender.isUserInteractionEnabled = false
        gender.inputView = nil
        gender.inputAccessoryView = nil
        gender.becomeFirstResponder()
        return gender
    }()
    
    let nextbutton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("NEXT", for: .normal)
        button.backgroundColor = .blue
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()

//    let bmi : UILabel = {
//        let bmi = UILabel()
//        bmi.text = "Select Your bmi:"
//        bmi.translatesAutoresizingMaskIntoConstraints = false
//        return bmi
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        addConstrains()
        setupConstraints()
        
        //nextbutton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        nextbutton.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                self.name.becomeFirstResponder()
//        }
//    }
    
    @objc func showOptions() {
        let alertController = UIAlertController(title: "Select Gender", message: nil, preferredStyle: .actionSheet)
        
        let maleAction = UIAlertAction(title: "Male", style: .default) { _ in
            self.gender.text = "Male" // Set the selected option into the gender text field
        }
        alertController.addAction(maleAction)
        
        let femaleAction = UIAlertAction(title: "Female", style: .default) { _ in
            self.gender.text = "Female" // Set the selected option into the gender text field
        }
        alertController.addAction(femaleAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    //calculate bmi
    @objc func goToNext() {
        guard let nameText = name.text,
              let heightText = height.text,
              let weightText = weight.text else {
            return
        }
        
        if let heightValue = Double(heightText),
           let weightValue = Double(weightText) {
            let bmiValue = calculateBMIValue(height: heightValue, weight: weightValue)
            
            let startController = StartController()
            startController.name = nameText
            startController.bmiValue = bmiValue
            
            navigationController?.pushViewController(startController, animated: true)
        } else {
            // Handle invalid height or weight
        }
    }
        
        private func calculateBMIValue(height: Double, weight: Double) -> Double {
            let heightInMeters = height / 100.0 // Convert height from cm to meters
            let bmiValue = weight / (heightInMeters * heightInMeters)
            return bmiValue
        }
    
    //Add Constrain
    func addConstrains(){
        view.addSubview(header1)
        view.addSubview(header2)
        view.addSubview(namelabel)
        view.addSubview(name)
        view.addSubview(agelabel)
        view.addSubview(age)
        view.addSubview(genderlabel)
        view.addSubview(selectButton)
        view.addSubview(gender)
        view.addSubview(heightlabel)
        Hstack.addArrangedSubview(height)
        Hstack.addArrangedSubview(heightvalue)
        view.addSubview(Hstack)
        view.addSubview(weightlabel)
        Hstackw.addArrangedSubview(weight)
        Hstackw.addArrangedSubview(weightvalue)
        view.addSubview(Hstackw)
        view.addSubview(nextbutton)
    }


    
    //Constraints function
    func setupConstraints(){
        header1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        header1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        header2.topAnchor.constraint(equalTo: header1.bottomAnchor).isActive = true
        header2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        namelabel.topAnchor.constraint(equalTo: header2.bottomAnchor,constant: 30).isActive = true
        namelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        namelabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        name.topAnchor.constraint(equalTo: namelabel.bottomAnchor,constant: 10).isActive = true
        name.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        name.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        agelabel.topAnchor.constraint(equalTo: name.bottomAnchor,constant: 10).isActive = true
        agelabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        agelabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        age.topAnchor.constraint(equalTo: agelabel.bottomAnchor,constant: 10).isActive = true
        age.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        age.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        genderlabel.topAnchor.constraint(equalTo: age.bottomAnchor,constant: 10).isActive = true
        genderlabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        genderlabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        selectButton.topAnchor.constraint(equalTo: genderlabel.bottomAnchor, constant: 10).isActive = true
        selectButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        selectButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        gender.topAnchor.constraint(equalTo: selectButton.bottomAnchor, constant: 10).isActive = true
        gender.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        gender.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        heightlabel.topAnchor.constraint(equalTo: gender.bottomAnchor, constant: 30).isActive = true
        heightlabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        heightlabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        Hstack.topAnchor.constraint(equalTo: heightlabel.bottomAnchor, constant: 10).isActive = true
        Hstack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Hstack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        weightlabel.topAnchor.constraint(equalTo: Hstack.bottomAnchor, constant: 10).isActive = true
        weightlabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        weightlabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        Hstackw.topAnchor.constraint(equalTo: weightlabel.bottomAnchor, constant: 10).isActive = true
        Hstackw.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        Hstackw.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        nextbutton.topAnchor.constraint(equalTo: Hstackw.bottomAnchor, constant: 20).isActive = true
        nextbutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        nextbutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }
    

}
