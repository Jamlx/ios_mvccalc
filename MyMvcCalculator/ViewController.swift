//
//  ViewController.swift
//  MyCalculator
//
//  Created by James Cavanaugh on 10/10/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view loaded")
    }
    
    var model: CalcBrain = CalcBrain()
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBAction func btnNumberClick(_ sender: UIButton) {
        model.setVals(sender.currentTitle!)
        lblOutput.text = model.display
    }
    
    
    @IBAction func btnClearClick(_ sender: Any) {
        model.clear()
        lblOutput.text = model.display
    }
    
    
    @IBAction func btnNegateClick(_ sender: UIButton) {
        model.negate()
        lblOutput.text = model.display
    }
    
    @IBAction func btnPercentClick(_ sender: UIButton) {
        model.percent()
        lblOutput.text = model.display
    }
    
    @IBAction func btnSqrtClick(_ sender: UIButton) {
        model.sqrt()
        lblOutput.text = model.display
    }
    
    @IBAction func btnAddClick(_ sender: UIButton) {
        model.midOp=1
        model.curOp="add"
    }
    
    @IBAction func btnSubtractClick(_ sender: UIButton) {
        model.midOp=1
        model.curOp="sub"
    }
    
    @IBAction func btnMultiplyClick(_ sender: UIButton) {
        model.midOp=1
        model.curOp="mult"
    }
    
    @IBAction func btnDivideClick(_ sender: UIButton) {
        model.midOp=1
        model.curOp="div"
    }
    
    @IBAction func btnEqualsClick(_ sender: UIButton) {
        model.eq()
        lblOutput.text = model.display
    }

}
