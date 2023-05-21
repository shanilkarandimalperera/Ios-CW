//
//  Ios CW
//
//  Created by shanilka on 5/14/23.
//

import UIKit
import AVKit
import FLAnimatedImage

class ExcriseoverthreeController: UIViewController {

    // MARK: - UI Elements

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let duration: UILabel = {
        let namelabel = UILabel()
        namelabel.text = ""
        namelabel.textColor = .black
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        return namelabel
    }()

    let durationlabel: UILabel = {
        let namelabel = UILabel()
        namelabel.text = "COUNT"
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
    let urllabel: UILabel = {
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
    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Tricep")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 250).isActive = true
        image.layer.borderWidth = 0.3
        image.layer.borderColor = UIColor.black.cgColor
        image.layer.cornerRadius = 20 // Adjust the corner radius value as desired
        image.clipsToBounds = true // This ensures that the corners are rounded
        return image
    }()
    
    let start: UIButton = {
           let button = UIButton()
           button.translatesAutoresizingMaskIntoConstraints = false
           button.setTitle("Start Countdown", for: .normal)
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
           button.backgroundColor = .blue
           button.layer.shadowOpacity = 1
           button.layer.cornerRadius = 10
           button.clipsToBounds = true
           return button
       }()

    
    var playerViewController: AVPlayerViewController?

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        setupScrollView()
        addSubviews()
        setupConstraints()
        playVideo()
        databaseCall()
        
        start.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)

    }
    @objc func startButtonPressed() {
        guard let durationText = duration.text, let durationValue = Int(durationText) else {
            return
        }
        
        startCountdown(duration: durationValue)
    }
    func startCountdown(duration: Int) {
        start.isEnabled = false
        var countdownDuration = duration

        let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            guard let self = self else { return }

            countdownDuration -= 1
            self.duration.text = "\(countdownDuration)"

            if countdownDuration == 0 {
                timer.invalidate()
                self.start.isEnabled = true
            }
        }

        RunLoop.current.add(timer, forMode: .common)
    }



    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }

    // MARK: - Setup Methods

    func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])

        scrollView.contentSize = contentView.bounds.size // Set the contentSize
    }

    func addSubviews() {
        contentView.addSubview(name)
        contentView.addSubview(Hstack)
        Hstack.addArrangedSubview(durationlabel)
        Hstack.addArrangedSubview(duration)
        contentView.addSubview(instruction)
        contentView.addSubview(focuslabel)
        contentView.addSubview(intro)
        contentView.addSubview(intro1)
        contentView.addSubview(focus1)
        contentView.addSubview(focus2)
        contentView.addSubview(focus3)
        contentView.addSubview(image)
        contentView.addSubview(start)
    }

    func setupConstraints() {
        name.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        name.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true

        Hstack.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 350).isActive = true
        Hstack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        Hstack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        
        start.topAnchor.constraint(equalTo: Hstack.bottomAnchor, constant: 10).isActive = true
        start.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        start.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        instruction.topAnchor.constraint(equalTo: start.bottomAnchor, constant: 10).isActive = true
        instruction.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        instruction.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        intro.topAnchor.constraint(equalTo: instruction.bottomAnchor, constant: 10).isActive = true
        intro.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        intro.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        intro1.topAnchor.constraint(equalTo: intro.bottomAnchor, constant: 10).isActive = true
        intro1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        intro1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        focuslabel.topAnchor.constraint(equalTo: intro1.bottomAnchor, constant: 10).isActive = true
        focuslabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        focuslabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        focus1.topAnchor.constraint(equalTo: focuslabel.bottomAnchor, constant: 10).isActive = true
        focus1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        focus1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        focus2.topAnchor.constraint(equalTo: focus1.bottomAnchor, constant: 10).isActive = true
        focus2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        focus2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        focus3.topAnchor.constraint(equalTo: focus2.bottomAnchor, constant: 10).isActive = true
        focus3.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        focus3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        
        image.topAnchor.constraint(equalTo: focus3.bottomAnchor, constant: 10).isActive = true
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40).isActive = true
    }

    // MARK: - Video Player

    func playVideo() {
        guard let videoURLString = urllabel.text, let videoURL = URL(string: "https://youtu.be/R4pyWm_9q_I") else {
                // Handle invalid video URL
                return
            }

        let player = AVPlayer(url: videoURL)
        playerViewController = AVPlayerViewController()
        playerViewController?.player = player

        if let playerViewController = playerViewController {
            addChild(playerViewController)
            contentView.addSubview(playerViewController.view)

            playerViewController.view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                playerViewController.view.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 20),
                playerViewController.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                playerViewController.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                playerViewController.view.heightAnchor.constraint(equalToConstant: 300)
            ])

            playerViewController.didMove(toParent: self)

            player.play()
        }
    }

    // MARK: - Data Retrieval

    func databaseCall() {
        Postservice.shared.fetchAllItemsovercat()

        Postservice.shared.fetchSingleitemovercat(id: "et3c") { todoItem in
            DispatchQueue.main.async {
                self.duration.text = todoItem?.duration
                self.name.text = todoItem?.name
                self.focus1.text = todoItem?.focus1
                self.focus2.text = todoItem?.focus2
                self.focus3.text = todoItem?.focus3
                self.intro.text = todoItem?.intro
                self.intro1.text = todoItem?.intro1
                self.urllabel.text = todoItem?.url
            }
        }
    }
}



