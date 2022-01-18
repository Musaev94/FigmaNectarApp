//
//  registrationPage.swift
//  FigmaNectarApp
//
//  Created by user on 17/1/22.
//

import Foundation
import SnapKit

class registrationPage: UIViewController, UITableViewDataSource {
    
    
    
    lazy var ovowi = UIImageView()
    
    lazy var text3 = UIImageView()
    
    lazy var text4 = UIImageView()

    
    lazy var tableView1: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return view
    }()
    
    lazy var buttton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 83.0/255.0, green: 177.0/255.0, blue: 117.0/255.0, alpha: 1)
        view.setTitle(">", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.layer.cornerRadius = 40
        return view
    }()
    
    private var button2: UIButton = {
        
        let view = UIButton(type: .system)
        view.backgroundColor =
        UIColor(red: 83.0/255.0, green: 131.0/255.0, blue: 236.0/255.0, alpha: 1)
        view.layer.cornerRadius = 20
        view.setTitle("Continue with Google", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18)
        return view
    }()
    
    private var button3: UIButton = {
        
        let view = UIButton(type: .system)
        view.backgroundColor =
        UIColor(red: 74.0/255.0, green: 102.0/255.0, blue: 172.0/255.0, alpha: 1)
        view.layer.cornerRadius = 20
        view.setTitle("Continue with Facebook", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18)
        return view
    }()
    
    

    
    override func viewDidLoad() {
        setupLoad()
    }
    
    var names = ["sdfsdf"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        let cell = registrCustomTableView()
        
        cell.imagFlag = UIImageView(image: .init(named: "flag"))
        
        cell.imagCod = UIImageView(image: .init(named: "cod"))
        
        cell.textField1 = UITextField()
        
        return cell
    }
    
    func setupLoad() {
        
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        
        view.addSubview(ovowi)
        ovowi.image = UIImage(named: "ovowi")
        ovowi.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(400)
            make.top.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        view.addSubview(text3)
        text3.image = UIImage(named: "text3")
        text3.snp.makeConstraints { make in
            make.height.equalTo(55)
            make.width.equalTo(222)
            make.top.equalToSuperview().inset(420)
            make.left.equalToSuperview().inset(25)
        }
        
        view.addSubview(tableView1)
        tableView1.snp.makeConstraints { make in
            make.top.equalTo(text3.snp.bottom).offset(20)
            make.left.equalToSuperview()
            make.right.equalToSuperview().inset(150)
            make.bottom.equalToSuperview().inset(305)
        }
        
        view.addSubview(buttton)
        buttton.addTarget(nil, action: #selector(clickOnNumberPage(view:)), for: .touchUpInside)
        buttton.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.top.equalTo(text3.snp.bottom).offset(2)
            make.right.equalToSuperview().offset(-20)
        }
        
        view.addSubview(text4)
        text4.image = UIImage(named: "text4")
        text4.snp.makeConstraints { make in
            make.height.equalTo(10)
            make.width.equalTo(150)
            make.top.equalTo(tableView1.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(button2)
        button2.snp.makeConstraints { make in
            make.width.equalTo(353)
            make.height.equalTo(67)
            make.top.equalTo(text4.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(button3)
        button3.snp.makeConstraints { make in
            make.width.equalTo(353)
            make.height.equalTo(67)
            make.top.equalTo(button2.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func clickOnNumberPage(view: UIButton) {
        navigationController?.pushViewController(numberPage1(), animated: true)
    }
    
}
