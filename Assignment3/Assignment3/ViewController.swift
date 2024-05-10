//
//  ViewController.swift
//  Assignment3
//
//  Created by Dishant Chaudhari on 5/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel = UILabel()
    var descriptionLabel = UILabel()
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // Title Label
        titleLabel.text = "Welcome to My App"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.frame = CGRect(x: 20, y: height * 0.1, width: width - 40, height: 40)
        view.addSubview(titleLabel)
        
        // Description Label
        descriptionLabel.text = "This is a demo of adding buttons and labels programmatically."
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
        descriptionLabel.frame = CGRect(x: 20, y: height * 0.2, width: width - 40, height: 80)
        view.addSubview(descriptionLabel)
        
        // Button 1
        button1.setTitle("Button 1", for: .normal)
        button1.setTitleColor(.blue, for: .normal)
        button1.frame = CGRect(x: width * 0.1, y: height * 0.4, width: width * 0.3, height: 50)
        view.addSubview(button1)
        
        // Button 2
        button2.setTitle("Button 2", for: .normal)
        button2.setTitleColor(.blue, for: .normal)
        button2.frame = CGRect(x: width * 0.4, y: height * 0.4, width: width * 0.3, height: 50)
        view.addSubview(button2)
        
        // Button 3
        button3.setTitle("Button 3", for: .normal)
        button3.setTitleColor(.blue, for: .normal)
        button3.frame = CGRect(x: width * 0.7, y: height * 0.4, width: width * 0.3, height: 50)
        view.addSubview(button3)
        
        // Button Actions
        button1.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        button2.addTarget(self, action: #selector(button2Action), for: .touchUpInside)
        button3.addTarget(self, action: #selector(button3Action), for: .touchUpInside)
    }
    
    @objc func button1Action() {
        titleLabel.text = "Button 1 Pressed"
    }
    
    @objc func button2Action() {
        titleLabel.text = "Button 2 Pressed"
    }
    
    @objc func button3Action() {
        titleLabel.text = "Button 3 Pressed"
    }
}
