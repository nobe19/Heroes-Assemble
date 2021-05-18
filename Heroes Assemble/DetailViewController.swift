//
//  DetailViewController.swift
//  Heroes Assemble
//
//  Created by Nipuni Obe on 5/14/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var heroLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var alterEgoLabel: UILabel!
    @IBOutlet weak var aliasesTextView: UITextView!
    @IBOutlet weak var publisherLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    

}
