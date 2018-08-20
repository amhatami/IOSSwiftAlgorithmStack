//
//  ViewController.swift
//  IOSSwiftAlgorithmStack
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inPush: UITextField!
    @IBOutlet weak var outPop: UITextField!
    @IBOutlet weak var stackView: UITextView!
    var mainStack = Stack<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainStack.push("mad")
        mainStack.push("Lad01")
        mainStack.push("Lad02")
        mainStack.push("Lad03")
        mainStack.push("Lad04")
        mainStack.push("Lad05")
        mainStack.push("Lad06")
        mainStack.push("Lad07")
        mainStack.push("Lad08")
        mainStack.push("Lad09")
        
        mainStack.showStack()
        stackView.text = mainStack.toArrayStack().joined(separator: "\n")

    }

    
    
    @IBAction func pushAct(_ sender: UIButton) {
        
        if (inPush.text?.isEmpty )! { return }
        mainStack.push(inPush.text!)
        stackView.text = mainStack.toArrayStack().joined(separator: "\n")

    }
    
    @IBAction func popAct(_ sender: Any) {
    
        guard let popElem = mainStack.pop() else { return }
        outPop.text = popElem
        stackView.text = mainStack.toArrayStack().joined(separator: "\n")

    }
    
    
}

