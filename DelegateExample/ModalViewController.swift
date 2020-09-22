//
//  ModalViewController.swift
//  DelegateExample
//
//  Created by Saulo Garcia on 9/21/20.
//

import UIKit

protocol ModalViewControllerDelegate: class {
    func modalViewController(_ viewController: ModalViewController, didUpdateText: String)
}

class ModalViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    weak var delegate: ModalViewControllerDelegate?
    
    @IBAction func tappedDone(_ sender: Any) {
        guard let text = textField.text else { return }
        delegate?.modalViewController(self, didUpdateText: text)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
