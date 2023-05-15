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

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        addConstrains()
        setupConstrains()
        
        if let name1 = name {
               namelabel.text = "Welcome \(name1) "
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
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    func addConstrains(){
        view.addSubview(bmiLabel)
        view.addSubview(namelabel)
        view.addSubview(bmitext)
    }
    
    func setupConstrains(){
        namelabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        namelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        bmitext.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 30).isActive = true
        bmitext.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        bmitext.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
//        bmitext.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        //bmiLabel.topAnchor.constraint(equalTo: bmitext.bottomAnchor).isActive = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
