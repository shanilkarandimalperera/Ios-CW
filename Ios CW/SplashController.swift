//
//  SplashController.swift
//  Ios CW
//
//  Created by shanilka on 5/13/23.
//

import UIKit

class SplashController: UIViewController {
    
    let image : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fitness")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 300).isActive = true
        image.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adding subviews
        view.addSubview(image)
        
        //Constrains Function
        setupConstrain()
        
        view.backgroundColor = .blue

//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                    let mainViewController = ViewController()
//                    mainViewController.modalPresentationStyle = .fullScreen
//                    self.present(mainViewController, animated: true, completion: nil)
//                }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    let mainViewController = ViewController()
                    let navigationController = UINavigationController(rootViewController: mainViewController)
                    navigationController.modalPresentationStyle = .fullScreen
                    self.present(navigationController, animated: true, completion: nil)
                }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func setupConstrain(){
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}
