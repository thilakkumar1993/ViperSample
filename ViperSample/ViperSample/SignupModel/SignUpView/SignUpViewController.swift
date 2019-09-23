//
//  SignUpViewController.swift
//  ViperSample
//
//  Created by Thilak kumar on 23/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,SignUpPresenterToViewProtocal {
    
    @IBOutlet weak var messageLbl: UILabel!
    

    var presenter: SignUpViewToPresentProtocal?
    override func viewDidLoad() {
        super.viewDidLoad()
      presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func showMessage(message: String) {
        print(message)
        messageLbl.text = message
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
