//
//  OptionController.swift
//  Ios CW
//
//  Created by shanilka on 5/14/23.
//

//import UIKit
//
//class ExcriseoneController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .white
//
//        // Do any additional setup after loading the view.
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.navigationController?.navigationBar.isHidden = false
//    }
//}

import UIKit
import AVKit
import FLAnimatedImage

class ExcriseoneController: UIViewController {
    
    let duration: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.textColor = .black
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let durationlabel: UILabel = {
        let namelabel = UILabel()
        namelabel.text = "DURATION (SECONDS)"
        namelabel.textColor = .blue
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let instruction: UILabel = {
        let namelabel = UILabel()
        namelabel.text = "INSTRUCTIONS"
        namelabel.textColor = .blue
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let focuslabel: UILabel = {
        let namelabel = UILabel()
        namelabel.text = "FOCUS AREA"
        namelabel.textColor = .blue
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.text = ""
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont(name: "ArialRoundedMTBold", size: 20)
        name.textColor = .blue
        return name
    }()
    
    let focus1: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        namelabel.backgroundColor = .tertiaryLabel
        namelabel.layer.cornerRadius = 10
            namelabel.clipsToBounds = true
        namelabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        namelabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        namelabel.textAlignment = .center
        return namelabel
    }()
    
    let focus2: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        namelabel.backgroundColor = .tertiaryLabel
        namelabel.layer.cornerRadius = 10
            namelabel.clipsToBounds = true
        namelabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        namelabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        namelabel.textAlignment = .center
        return namelabel
    }()
    
    let focus3: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        namelabel.backgroundColor = .tertiaryLabel
        namelabel.layer.cornerRadius = 10
            namelabel.clipsToBounds = true
        namelabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        namelabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        namelabel.textAlignment = .center
        return namelabel
    }()
    let intro: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.numberOfLines = 0
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro1: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.numberOfLines = 0
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let Hstack : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
        return Hstack
    }()
    let image2 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "push")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.borderWidth = 0.3
            image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    
    var playerViewController: AVPlayerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        databaseCall()
        addConstraints()
        setupConstraints()
        
        playVideo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    func databaseCall(){
        Postservice.shared.fetchAllItems()
                
                Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
                    DispatchQueue.main.async {
                        self.duration.text = todoItem?.duration
                    }
                }
                
                Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
                    DispatchQueue.main.async {
                        self.name.text = todoItem?.name
                    }
                }
                
                Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
                    DispatchQueue.main.async {
                        self.focus1.text = todoItem?.focus1
                    }
                }
                
                Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
                    DispatchQueue.main.async {
                        self.focus2.text = todoItem?.focus2
                    }
                }
        Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
            DispatchQueue.main.async {
                self.focus3.text = todoItem?.focus3
            }
        }
        Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
            DispatchQueue.main.async {
                self.intro.text = todoItem?.intro
            }
        }
        Postservice.shared.fetchSingleitem(id: "et1a") { todoItem in
            DispatchQueue.main.async {
                self.intro1.text = todoItem?.intro1
            }
        }
    }
    func addConstraints() {
        view.addSubview(name)
        view.addSubview(Hstack)
        Hstack.addArrangedSubview(durationlabel)
        Hstack.addArrangedSubview(duration)
        view.addSubview(instruction)
        view.addSubview(focuslabel)
        view.addSubview(intro)
        view.addSubview(intro1)
        view.addSubview(focus1)
        view.addSubview(focus2)
        view.addSubview(focus3)
    }
    
    func setupConstraints() {
        
        name.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        Hstack.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 350).isActive = true
                Hstack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        Hstack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        instruction.topAnchor.constraint(equalTo: Hstack.bottomAnchor,constant: 10).isActive = true
        instruction.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        instruction.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        intro.topAnchor.constraint(equalTo: instruction.bottomAnchor, constant: 10).isActive = true
        intro.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        intro.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        intro1.topAnchor.constraint(equalTo: intro.bottomAnchor, constant: 10).isActive = true
        intro1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        intro1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        focuslabel.topAnchor.constraint(equalTo: intro1.bottomAnchor, constant: 10).isActive = true
        focuslabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        focuslabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        focus1.topAnchor.constraint(equalTo: focuslabel.bottomAnchor, constant: 10).isActive = true
        focus1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        focus1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        focus2.topAnchor.constraint(equalTo: focus1.bottomAnchor, constant: 10).isActive = true
        focus2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        focus2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        focus3.topAnchor.constraint(equalTo: focus2.bottomAnchor, constant: 10).isActive = true
        focus3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        focus3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
    }
    
    func playVideo() {
        guard let videoURL = URL(string: "https://youtu.be/q_Z29u7nglQ") else {
            // Handle invalid video URL
            return
        }
        
        let player = AVPlayer(url: videoURL)
        playerViewController = AVPlayerViewController()
        playerViewController?.player = player
        
        if let playerViewController = playerViewController {
            addChild(playerViewController)
            view.addSubview(playerViewController.view)
            
            playerViewController.view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                playerViewController.view.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20),
                playerViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                playerViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//                playerViewController.view.widthAnchor.constraint(equalToConstant: 300), // Adjust the desired width here
                playerViewController.view.heightAnchor.constraint(equalToConstant: 300) // Adjust the desired height here
            ])
            
            playerViewController.didMove(toParent: self)
            
            player.play()
        }
    }
}

