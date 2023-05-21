
//  Created by shanilka on 5/16/23.
//
//


import UIKit

class PlanController: UIViewController {

    let duration: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let name: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus1: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus2: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus3: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro1: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    
    let header2: UILabel = {
        let header2 = UILabel()
        header2.text = "Exercises"
        header2.translatesAutoresizingMaskIntoConstraints = false
        header2.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        header2.textColor = .blue
        header2.backgroundColor = .white // Set the background color to white
        
        header2.textAlignment = .center // Center the text
        
        // Set rounded upper corners
        header2.layer.cornerRadius = 20
        header2.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        header2.layer.masksToBounds = true
        
        return header2
    }()


    let image : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ex1")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.borderWidth = 0.3
            image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    let imagecover : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "coverschedule")
        image.translatesAutoresizingMaskIntoConstraints = false
        //image.widthAnchor.constraint(equalToConstant: 350).isActive = true
        image.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return image
    }()
    
    let Hstack : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
//        Hstack.layer.borderWidth = 1
//            Hstack.layer.borderColor = UIColor.black.cgColor
        return Hstack
    }()
    
    let Vstack : UIStackView = {
        let Vstack = UIStackView()
        Vstack.translatesAutoresizingMaskIntoConstraints = false
        Vstack.axis =  .vertical
        return Vstack
    }()
    
    
    
    // Excrise 02
    let duration2: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let name2: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus12: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus22: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus32: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro2: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
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
    
    let Hstack2 : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
        return Hstack
    }()
    
    let Vstack2 : UIStackView = {
        let Vstack = UIStackView()
        Vstack.translatesAutoresizingMaskIntoConstraints = false
        Vstack.axis =  .vertical
        return Vstack
    }()
    
    //Excrise 03
    
    let duration3: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let name3: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus13: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus23: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus33: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro3: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let image3 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "push2")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.borderWidth = 0.3
            image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    
    let Hstack3 : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
        return Hstack
    }()
    
    let Vstack3 : UIStackView = {
        let Vstack = UIStackView()
        Vstack.translatesAutoresizingMaskIntoConstraints = false
        Vstack.axis =  .vertical
        return Vstack
    }()
    
    //Excrise 04
    let duration4: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let name4: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus14: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus24: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro4: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let image4: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "raise")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.borderWidth = 0.3
            image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    
    let Hstack4 : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
        return Hstack
    }()
    
    let Vstack4 : UIStackView = {
        let Vstack = UIStackView()
        Vstack.translatesAutoresizingMaskIntoConstraints = false
        Vstack.axis =  .vertical
        return Vstack
    }()
    
    //Excrise 05
    
    let duration5: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let name5: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus15: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let focus25: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let intro5: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()
    let image5: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sqt")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        image.layer.borderWidth = 0.3
            image.layer.borderColor = UIColor.black.cgColor
        return image
    }()
    
    let Hstack5 : UIStackView = {
        let Hstack = UIStackView()
        Hstack.translatesAutoresizingMaskIntoConstraints = false
        Hstack.axis =  .horizontal
        Hstack.spacing = 20
        return Hstack
    }()
    
    let Vstack5 : UIStackView = {
        let Vstack = UIStackView()
        Vstack.translatesAutoresizingMaskIntoConstraints = false
        Vstack.axis =  .vertical
        return Vstack
    }()
    
    let datasave: UIButton = {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Save", for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
           button.backgroundColor = .blue
           button.layer.shadowOpacity = 1
           button.layer.cornerRadius = 10
           button.clipsToBounds = true
           return button
       }()
    let restore: UIButton = {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Resote", for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
           button.backgroundColor = .systemGreen
           button.layer.shadowOpacity = 1
           button.layer.cornerRadius = 10
           button.clipsToBounds = true
           return button
       }()
    
    let detail: UILabel = {
        let namelabel = UILabel()
        namelabel.text = "Press on top of excrise to remove from list"
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        namelabel.textColor = .red
        return namelabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        addConstraints()
        setupConstraints()

        databaseCall()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hstackTapped))
            Hstack.addGestureRecognizer(tapGesture)
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(hstackTapped2))
        Hstack2.addGestureRecognizer(tapGesture2)
        
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(hstackTapped3))
        Hstack3.addGestureRecognizer(tapGesture3)
        
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(hstackTapped4))
        Hstack4.addGestureRecognizer(tapGesture4)
        
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(hstackTapped5))
        Hstack5.addGestureRecognizer(tapGesture5)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    @objc func hstackTapped() {
        // Toggle the visibility of Hstack's subviews
        for subview in Hstack.arrangedSubviews {
            subview.isHidden = !subview.isHidden
        }
    }
    @objc func hstackTapped2() {
        // Toggle the visibility of Hstack's subviews
        for subview in Hstack2.arrangedSubviews {
            subview.isHidden = !subview.isHidden
        }
    }
    @objc func hstackTapped3() {
        // Toggle the visibility of Hstack's subviews
        for subview in Hstack3.arrangedSubviews {
            subview.isHidden = !subview.isHidden
        }
    }
    @objc func hstackTapped4() {
        // Toggle the visibility of Hstack's subviews
        for subview in Hstack4.arrangedSubviews {
            subview.isHidden = !subview.isHidden
        }
    }
    @objc func hstackTapped5() {
        // Toggle the visibility of Hstack's subviews
        for subview in Hstack5.arrangedSubviews {
            subview.isHidden = !subview.isHidden
        }
    }
    
    @objc func goToNext(){
            let vc = MealController()
            navigationController?.pushViewController(vc, animated: true)
        }
    
    func databaseCall(){
        Postservice.shared.fetchAllItemsovercat()

        // Excrise 01
        Postservice.shared.fetchSingleitemovercat(id: "et3a") { todoItem in
            DispatchQueue.main.async {
                self.duration.text = todoItem?.duration
            }
        }
        Postservice.shared.fetchSingleitemovercat(id: "et3a") { todoItem in
            DispatchQueue.main.async {
                self.name.text = todoItem?.name
            }
        }
        
        //Excrise 02
        Postservice.shared.fetchSingleitemovercat(id: "et3b") { todoItem in
            DispatchQueue.main.async {
                self.duration2.text = todoItem?.duration
            }
        }
        Postservice.shared.fetchSingleitemovercat(id: "et3b") { todoItem in
            DispatchQueue.main.async {
                self.name2.text = todoItem?.name
            }
        }
        
        
        //Excrise 03
        Postservice.shared.fetchSingleitemovercat(id: "et3c") { todoItem in
            DispatchQueue.main.async {
                self.duration3.text = todoItem?.duration
            }
        }
        Postservice.shared.fetchSingleitemovercat(id: "et3c") { todoItem in
            DispatchQueue.main.async {
                self.name3.text = todoItem?.name
            }
        }
        
        //Excrise 04
        Postservice.shared.fetchSingleitemovercat(id: "et3d") { todoItem in
            DispatchQueue.main.async {
                self.duration4.text = todoItem?.duration
            }
        }
        Postservice.shared.fetchSingleitemovercat(id: "et3d") { todoItem in
            DispatchQueue.main.async {
                self.name4.text = todoItem?.name
            }
        }
        
        // Excrise 05
        Postservice.shared.fetchSingleitemovercat(id: "et3e") { todoItem in
            DispatchQueue.main.async {
                self.duration5.text = todoItem?.duration
            }
        }
        Postservice.shared.fetchSingleitemovercat(id: "et3e") { todoItem in
            DispatchQueue.main.async {
                self.name5.text = todoItem?.name
            }
        }
    }

    func addConstraints() {
        view.addSubview(imagecover)
        view.addSubview(header2)
        Hstack.addArrangedSubview(image)
        Hstack.addArrangedSubview(Vstack)
        Vstack.addArrangedSubview(name)
        Vstack.addArrangedSubview(duration)
        view.addSubview(Hstack)
        
        Hstack2.addArrangedSubview(image2)
        Hstack2.addArrangedSubview(Vstack2)
        Vstack2.addArrangedSubview(name2)
        Vstack2.addArrangedSubview(duration2)
        view.addSubview(Hstack2)
        
        Hstack3.addArrangedSubview(image3)
        Hstack3.addArrangedSubview(Vstack3)
        Vstack3.addArrangedSubview(name3)
        Vstack3.addArrangedSubview(duration3)
        view.addSubview(Hstack3)
        
        Hstack4.addArrangedSubview(image4)
        Hstack4.addArrangedSubview(Vstack4)
        Vstack4.addArrangedSubview(name4)
        Vstack4.addArrangedSubview(duration4)
        view.addSubview(Hstack4)
        
        Hstack5.addArrangedSubview(image5)
        Hstack5.addArrangedSubview(Vstack5)
        Vstack5.addArrangedSubview(name5)
        Vstack5.addArrangedSubview(duration5)
        view.addSubview(Hstack5)
        
        view.addSubview(datasave)
        view.addSubview(restore)
        view.addSubview(detail)
        
    }

    func setupConstraints() {
        
        imagecover.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        imagecover.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imagecover.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        header2.topAnchor.constraint(equalTo: imagecover.bottomAnchor, constant: -25).isActive = true
        header2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        header2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        detail.topAnchor.constraint(equalTo: header2.bottomAnchor, constant: 8).isActive = true
        detail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        Hstack.topAnchor.constraint(equalTo: detail.bottomAnchor, constant: 10).isActive = true
        Hstack.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        Hstack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        Hstack2.topAnchor.constraint(equalTo: Hstack.bottomAnchor, constant: 20).isActive = true
        Hstack2.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        Hstack2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        Hstack3.topAnchor.constraint(equalTo: Hstack2.bottomAnchor, constant: 20).isActive = true
        Hstack3.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        Hstack3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        Hstack4.topAnchor.constraint(equalTo: Hstack3.bottomAnchor, constant: 20).isActive = true
        Hstack4.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        Hstack4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        Hstack5.topAnchor.constraint(equalTo: Hstack4.bottomAnchor, constant: 20).isActive = true
        Hstack5.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10).isActive = true
        Hstack5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        datasave.topAnchor.constraint(equalTo: Hstack5.bottomAnchor, constant: 20).isActive = true
                datasave.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
                datasave.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        restore.topAnchor.constraint(equalTo: datasave.bottomAnchor, constant: 10).isActive = true
                restore.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
                restore.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}

