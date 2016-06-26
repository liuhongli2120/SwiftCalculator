//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by 刘宏立 on 16/6/26.
//  Copyright © 2016年 lhl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var max:Double? = 0.0
    
    var l1:UITextField? = nil
    
    var l2:UITextField? = nil
    
    var resultLabel:UILabel? = nil
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        
        let textOne = UITextField(frame: CGRect(x: 40, y: 100, width: 70, height: 30))
        textOne.backgroundColor = #colorLiteral(red: 0.4776530862, green: 0.2292086482, blue: 0.9591622353, alpha: 1)
        
        view .addSubview(textOne)
        
        
        let textTwo = UITextField(frame: CGRect(x: 130, y: 100, width: 70, height: 30))
        textTwo.backgroundColor = #colorLiteral(red: 0.4776530862, green: 0.2292086482, blue: 0.9591622353, alpha: 1)
        
        view.addSubview(textTwo)
        
        l1 = textOne
        l2 = textTwo
        
        
        
        let addLabel = UILabel(frame: CGRect(x: 110, y: 100, width: 20, height: 30))
        addLabel.backgroundColor = #colorLiteral(red: 0.5296475887, green: 0.5296317339, blue: 0.5296407342, alpha: 1)
        
        view.addSubview(addLabel)
        
        
        let equalLabel = UILabel(frame: CGRect(x: 200, y: 100, width: 20, height: 30))
        equalLabel.backgroundColor = #colorLiteral(red: 0.5296475887, green: 0.5296317339, blue: 0.5296407342, alpha: 1)
        
        view.addSubview(equalLabel)
        
        
        let label = UILabel(frame: CGRect(x: 220, y: 100, width:80, height: 30))
        label.backgroundColor = #colorLiteral(red: 0.8779790998, green: 0.3812967837, blue: 0.5770481825, alpha: 1)
        
        view.addSubview(label)
        
        resultLabel = label
        
        addLabel.text = "+"
        
        equalLabel.text = "="
        
        
        let btn = UIButton(type: .contactAdd)
        
        btn.center = view.center
        
        view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        
        
        
    
    }
    
    func click() {
        
        let ocStr1 = (l1?.text)! as NSString
        
        let ocStr2 = (l2?.text)! as NSString
        
        let x:Double = ocStr1.doubleValue
        
        let y:Double = ocStr2.doubleValue
        
        let sum = x + y
        
        resultLabel?.text = "\(sum)"
        
        
    }


}

