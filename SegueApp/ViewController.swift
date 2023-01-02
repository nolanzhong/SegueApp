//
//  ViewController.swift
//  SegueApp
//
//  Created by Nolan Zhong on 1/1/23.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // checking if proper identifier first
        if segue.identifier == "toSecondVC" {
            // accessing the segue view controller
            let destinationVC = segue.destination as! Second_ViewController
            destinationVC.myName = userName
        }
    }
    
}

