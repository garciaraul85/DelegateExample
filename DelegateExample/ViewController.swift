//
//  ViewController.swift
//  DelegateExample
//
//  Created by Saulo Garcia on 9/21/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func tappedShowModal(_ sender: Any) {
        bindDelegate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func bindDelegate() {
        let modalViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(identifier: "ModalViewController") as! ModalViewController
        
        modalViewController.delegate = self
        
        present(modalViewController, animated: true, completion: nil)
    }

}

extension ViewController: ModalViewControllerDelegate {
    
    func modalViewController(_ viewController: ModalViewController, didUpdateText text: String) {
        textLabel.text = text
    }
    
}
