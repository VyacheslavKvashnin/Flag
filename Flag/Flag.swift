//
//  Flag.swift
//  Flag
//
//  Created by Вячеслав Квашнин on 28.07.2022.
//

import UIKit

class Flag: UIView {
    
    var likeButton: (() -> Void)?
    
    var isChange = false
    
    let buttonLike: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 60))
        button.setTitle("LIKE", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    
    let blueColor: UIView = {
        let blue = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        blue.backgroundColor = .blue
        return blue
    }()
    
    let redColor: UIView = {
        let red = UIView(frame: CGRect(x: 0, y: 60, width: 300, height: 60))
        red.backgroundColor = .red
        return red
    }()
    
    let yellowColor: UIView = {
        let yellow = UIView(frame: CGRect(x: 0, y: 120, width: 300, height: 60))
        yellow.backgroundColor = .yellow
        return yellow
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addCustomView()
        
        self.addSubview(blueColor)
        self.addSubview(redColor)
        self.addSubview(yellowColor)
        self.addSubview(buttonLike)
        self.backgroundColor = .white
        buttonLike.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    @objc
    func tapButton() {
        likeButton?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func actionButton() {
        self.isChange = !self.isChange
        if isChange {
            UIView.animate(withDuration: 1.0) {
                self.blueColor.backgroundColor = .systemPink
            }
        } else {
            UIView.animate(withDuration: 1) {
                self.blueColor.backgroundColor = .blue
            }
        }
    }
    
    func addCustomView() {
        self.blueColor.frame = CGRect(x: 50, y: 280, width: 300, height: 60)
        self.redColor.frame = CGRect(x: 50, y: 340, width: 300, height: 60)
        self.yellowColor.frame = CGRect(x: 50, y: 400, width: 300, height: 60)
        self.buttonLike.frame = CGRect(x: 0, y: 450, width: 100, height: 60)
    }
}


