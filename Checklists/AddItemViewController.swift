//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Tamas Horvath on 2017. 10. 28..
//  Copyright © 2017. Tamas Horvath. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil) //close the Add Item with an animation
    }
    
    @IBAction func done(){
        print("Contents of the text field: \(textField.text!)")
        
        dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    //this is invoked every time the user changes the text
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool { //give you the part of the text should be replaced
        
        let oldText = textField.text! as NSString
        let newText = oldText.replacingCharacters(in: range, with: string) as NSString
        
       doneBarButton.isEnabled = (newText.length > 0)
        
        return true
    }
}
