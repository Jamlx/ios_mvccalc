//
//  CalcBrain.swift
//  MyCalculator
//
//  Created by James Cavanaugh on 11/12/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import Foundation

class CalcBrain{
    
    var val1: Double
    var val2: Double
    var curOp: String
    var midOp: Int
    var display: String
    
    init(){
        val1=0
        val2=0
        curOp="none"
        midOp=0
        display="0"
    }
    
    func clear(){
        display = "0"
        midOp = 0
        curOp = "none"
        val1 = 0
        val2 = 0
        print("Clear btn clicked")
    }
    
    func negate(){
        if(midOp==0 || midOp==3){
            val1.negate();
            display = String(val1)
        }else if(midOp==1 || midOp==2){
            val2.negate();
            display = String(val2)
        }
    }
    
    func percent(){
        let out = val1/100.0
        display = String(out)
        midOp = 3
        curOp = "none"
        val1 = out
        val2 = 0
    }
    
    func sqrt(){
        let out = val1.squareRoot()
        display = String(out)
        midOp = 3
        curOp = "none"
        val1 = out
        val2 = 0
    }
    
    func eq(){
        var out: Double = 0
        if(curOp == "add"){
            out = val1+val2
        }else if(curOp == "sub"){
            out = val1-val2
        }else if(curOp == "mult"){
            out = val1*val2
        }else if(curOp == "div"){
            out = val1/val2
        }
        display = String(out)
        midOp = 3
        curOp = "none"
        val1 = out
        val2 = 0
    }
    
    func setVals(_ num: String){
        if((display=="0" && num != ".") || midOp==3){
            val1 = Double(num)!
            display = num
            midOp=0
        }else{
            if(midOp==0){
                val1 = Double(display + num)!
                display = display + num
            }else if(midOp==1){
                val2 = Double(num)!
                display = num
                midOp=2
            }else if(midOp==2){
                val2 = Double(display + num)!
                display = display + num
            }
        }
    }
    
}

