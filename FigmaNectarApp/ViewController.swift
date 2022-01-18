//
//  ViewController.swift
//  FigmaNectarApp
//
//  Created by user on 16/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var textView1 = UIImageView()
    
    private var button1: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .white
        view.setTitle(">", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.setTitleColor((UIColor(red: 83.0/255.0, green: 177.0/255.0, blue: 117.0/255.0, alpha: 1)), for: .normal)
        view.layer.cornerRadius = 40
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoad()
    }
    
    private func setupLoad() {
        
        self.view.backgroundColor = UIColor(red: 83.0/255.0, green: 177.0/255.0, blue: 117.0/255.0, alpha: 1)
        view.addSubview(textView1)
        textView1.image = UIImage(named: "nectar")
        textView1.snp.makeConstraints { make in
            make.width.equalTo(267)
            make.height.equalTo(68)
            make.center.equalToSuperview()
        }
        
        view.addSubview(button1)
        button1.addTarget(nil, action: #selector(clickButton(view:)), for: .touchUpInside)
        button1.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.top.equalToSuperview().inset(600)
            make.center.equalToSuperview()
        }
    
        }
    @objc func clickButton(view: UIButton) {
        
        navigationController?.pushViewController(ChineseController(), animated: true)
    }

}


