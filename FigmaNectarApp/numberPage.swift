//
//  NumberPage.swift
//  FigmaNectarApp
//
//  Created by user on 18/1/22.
//

import Foundation
import SnapKit

class numberPage1: UIViewController, UITableViewDataSource {
    
    var text5 = UIImageView()
    
    var text6 = UIImageView()
    
    var text7 = UIImageView()

    
    var foneNumbers = UIImageView()
    
    lazy var tableView1: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return view
    }()
    
    lazy var butttonn: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 83.0/255.0, green: 177.0/255.0, blue: 117.0/255.0, alpha: 1)
        view.setTitle(">", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 40
        return view
    }()

    
    override func viewDidLoad() {
        gogo()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        let cell = registrCustomTableView()
        
        cell.imagFlag = UIImageView(image: .init(named: "flag"))
        
        cell.imagCod = UIImageView(image: .init(named: "cod"))
        
        cell.textField1 = UITextField()
        
        return cell
    }
   
    func gogo() {
        
        view.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1)
        
        view.addSubview(text5)
        text5.image = UIImage(named: "text5")
        text5.snp.makeConstraints { make in
            make.width.equalTo(250)
            make.height.equalTo(20)
            make.top.equalToSuperview().offset(140)
            make.left.equalToSuperview().offset(30)
        }
        
        view.addSubview(text6)
        text6.image = UIImage(named: "text6")
        text6.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(10)
            make.top.equalTo(text5.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(30)
        }
        
        view.addSubview(tableView1)
        tableView1.snp.makeConstraints { make in
            make.top.equalTo(text6.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(17)
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        view.addSubview(foneNumbers)
        foneNumbers.image = UIImage(named: "fone")
        foneNumbers.snp.makeConstraints { make in
            make.width.equalTo(390)
            make.height.equalTo(300)
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        view.addSubview(butttonn)
//        butttonn.addTarget(nil, action: #selector(clickOnNumberPage(view:)), for: .touchUpInside)
        butttonn.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.bottom.equalTo(foneNumbers.snp.top).offset(-50)
            make.right.equalToSuperview().offset(-30)
        }
        
        view.addSubview(text7)
        text7.image = UIImage(named: "text7")
        text7.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(10)
            make.bottom.equalTo(foneNumbers.snp.top).offset(-80)
            make.left.equalToSuperview().offset(30)
        }
        }

    }

