


//import UIKit
//import AVFoundation
//
//class ViewController: UIViewController {
//
//    private var player: AVPlayer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundimage") ?? UIImage())
//    }
//}
import UIKit

class ViewController: UIViewController {
    
    let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("START", for: .normal)
        button.backgroundColor = .blue
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView()
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage(named: "backgroundimage")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)

        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        // Bring the background image to the back
        view.sendSubviewToBack(backgroundImage)
        view.addSubview(button)
        
        
        button.addTarget(self, action: #selector(goToNext), for: .touchUpInside)
        
        setupConstrains()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func setupConstrains(){
        
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -30).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -100).isActive = true
    }
    
    @objc func goToNext(){
        let vc = IntroController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
