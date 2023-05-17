//
//  ScheduleController.swift
//  Ios CW
//
//  Created by shanilka on 5/16/23.
//

import UIKit

class ScheduleController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }

}
