//
//  ViewController.swift
//  FigmaNectarApp
//
//  Created by user on 16/1/22.
//

import UIKit
import SnapKit

class ChineseController: UIViewController {
    
    private var chinese = UIImageView()
    
    private var carrot1 = UIImageView()
    
    private var text1 = UIImageView()
    
    private var text2 = UIImageView()
    
    private var button1: UIButton = {
        
        let view = UIButton(type: .system)
        view.backgroundColor =
        UIColor(red: 83.0/255.0, green: 177.0/255.0, blue: 117.0/255.0, alpha: 1)
        view.layer.cornerRadius = 20
        view.setTitle("Get Started", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoad()
    }
    
    private func setupLoad() {
        view.addSubview(chinese)
        chinese.image = UIImage(named: "chinese")
        chinese.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
        
        view.addSubview(carrot1)
        carrot1.image = UIImage(named: "carrot1")
        carrot1.snp.makeConstraints { make in
            make.width.equalTo(48.47)
            make.height.equalTo(56.36)
            make.top.equalToSuperview().inset(470)
            make.left.equalToSuperview().inset(182.76)
            
        }
        
        view.addSubview(text1)
        text1.image = UIImage(named: "text1")
        text1.snp.makeConstraints { make in
            make.width.equalTo(253)
            make.height.equalTo(86)
            make.top.equalToSuperview().inset(550)
            make.left.equalToSuperview().inset(80.5)
        }
        
        view.addSubview(text2)
        text2.image = UIImage(named: "text2")
        text2.snp.makeConstraints { make in
            make.width.equalTo(295)
            make.height.equalTo(15)
            make.top.equalToSuperview().inset(650)
            make.left.equalToSuperview().inset(59.5)
        }
        
        view.addSubview(button1)
        button1.addTarget(nil, action: #selector(clickOnRegistr(view:)), for: .touchUpInside)
        button1.snp.makeConstraints { make in
            make.width.equalTo(353)
            make.height.equalTo(67)
            make.top.equalToSuperview().inset(700)
            make.center.equalToSuperview()
        }
    }
    
    @objc func clickOnRegistr(view: UIButton) {
        
        navigationController?.pushViewController(registrationPage(), animated: true)
    }


}



