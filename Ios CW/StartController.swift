//
//  StartController.swift
//  Ios CW
//
//  Created by shanilka on 5/15/23.
//

import UIKit

class StartController: UIViewController {
    var bmiValue: Double?
    var name : String?
    var age : String?
    var goal : String?
    var gender : String?
    
    let bmiLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
            //label.font = UIFont.systemFont(ofSize: 20)
            return label
        }()
    let namelabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        label.textColor = .blue
            //label.font = UIFont.systemFont(ofSize: 20)
            return label
        }()
    
    let bmitext: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont(name: "ArialRoundedMTBold", size: 20)
            return label
        }()
    
    let start: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Let's Start!", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        button.backgroundColor = .blue
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()


    let orlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "---------------- Or ----------------"
        label.textColor = .blue
        return label
    }()
    let createplan : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Own Plan", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        button.clipsToBounds = true
        return button
    }()
    
    let image : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "start")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 350).isActive = true
        image.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return image
    }()
    let agelabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let goallabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let genderlabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let goalA: UILabel = {
            let label = UILabel()
        label.text = "Goal:"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let AgeA: UILabel = {
            let label = UILabel()
        label.text = "Age:"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let genderA: UILabel = {
            let label = UILabel()
        label.text = "Gender:"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    let Hstack : UIStackView = {
        let Hstackw = UIStackView()
        Hstackw.translatesAutoresizingMaskIntoConstraints = false
        Hstackw.axis =  .horizontal
        Hstackw.spacing = 20
//        Hstackw.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        Hstackw.layer.cornerRadius = 10
//            Hstackw.layer.masksToBounds = true
        return Hstackw
    }()
    
    let Vstack : UIStackView = {
        let vstack = UIStackView()
        vstack.translatesAutoresizingMaskIntoConstraints = false
        vstack.axis =  .vertical
        vstack.alignment = .center
        return vstack
    }()
    let Vstack2 : UIStackView = {
        let vstack = UIStackView()
        vstack.translatesAutoresizingMaskIntoConstraints = false
        vstack.axis =  .vertical
        vstack.alignment = .center
        return vstack
    }()
    let Vstack3 : UIStackView = {
        let vstack = UIStackView()
        vstack.translatesAutoresizingMaskIntoConstraints = false
        vstack.axis =  .vertical
        vstack.alignment = .center
        return vstack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        addConstrains()
        setupConstrains()
        
        start.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        
        if let name1 = name {
               namelabel.text = "Welcome \(name1) "
           }
        if let age1 = age {
               agelabel.text = (age1)
           }
        if let goal1 = goal {
               goallabel.text = (goal1)
           }
        if let gender1 = gender {
               genderlabel.text = (gender1)
           }
        
        if let bmi = bmiValue {
                    let roundedBMI = String(format: "%.1f", bmi) // Round the BMI value to one decimal place
                    bmiLabel.text = "BMI: \(roundedBMI)"
            
            if bmi < 18.5 {
                        bmitext.text = "Your BMI Is Under Weight"
            }
            else if bmi >= 18.5 && bmi < 24.9 {
                        bmitext.text = "Your BMI Is Normal Weight"
                    }
            else{
                bmitext.text = "Your BMI Is Over Weight"
            }
                }
        
        createplan.addTarget(self, action: #selector(goToPlan), for: .touchUpInside)
        
    }
    @objc func goToPlan(){
            let vc = PlanController()
            navigationController?.pushViewController(vc, animated: true)
        }
    
    @objc func goToNext() {
            if let bmi = bmiValue {
                if bmi < 18.5 {
                    let exerciseOneController = ScheduleController()
                    navigationController?.pushViewController(exerciseOneController, animated: true)
                } else if bmi >= 18.5 && bmi < 24.9 {
                    let exerciseTwoController = SchedulenormalController()
                    navigationController?.pushViewController(exerciseTwoController, animated: true)
                } else {
                    let exerciseThreeController = ScheduleoverController()
                    navigationController?.pushViewController(exerciseThreeController, animated: true)
                }
            }
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    func addConstrains(){
        view.addSubview(bmiLabel)
        view.addSubview(namelabel)
        view.addSubview(bmitext)
        view.addSubview(start)
        view.addSubview(image)
        view.addSubview(orlabel)
        view.addSubview(createplan)
        view.addSubview(Hstack)
        Hstack.addArrangedSubview(Vstack)
        Vstack.addArrangedSubview(goalA)
        Vstack.addArrangedSubview(goallabel)
        Hstack.addArrangedSubview(Vstack2)
        Vstack2.addArrangedSubview(AgeA)
        Vstack2.addArrangedSubview(agelabel)
        Hstack.addArrangedSubview(Vstack3)
        Vstack3.addArrangedSubview(genderA)
        Vstack3.addArrangedSubview(genderlabel)
    }
    
    func setupConstrains(){
        namelabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        namelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        bmitext.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 30).isActive = true
        bmitext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        bmitext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
//        bmitext.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        //bmiLabel.topAnchor.constraint(equalTo: bmitext.bottomAnchor).isActive = true
        Hstack.topAnchor.constraint(equalTo: bmitext.bottomAnchor, constant: 20).isActive = true
        Hstack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        Hstack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
//        Hstack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        image.topAnchor.constraint(equalTo: Hstack.bottomAnchor, constant: 50).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        start.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 50).isActive = true
        start.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        start.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        orlabel.topAnchor.constraint(equalTo: start.bottomAnchor, constant: 20).isActive = true
        orlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        createplan.topAnchor.constraint(equalTo: orlabel.bottomAnchor, constant: 20).isActive = true
        createplan.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        createplan.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }

}
