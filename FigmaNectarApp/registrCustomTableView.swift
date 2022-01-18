//
//  registrCustomTableView.swift
//  FigmaNectarApp
//
//  Created by user on 17/1/22.
//

import Foundation
import SnapKit

class registrCustomTableView: UITableViewCell {
    
    lazy var imagFlag: UIImageView = {
        let view = UIImageView()
        return view
    }()

    lazy var imagCod: UIImageView = {
        let view = UIImageView()
        return view
        }()
    
    lazy var textField1: UITextField = {
        let view = UITextField()
        view.font = UIFont.boldSystemFont(ofSize: 100)
        return view
    }()
    
    override func layoutSubviews() {
        
        addSubview(imagFlag)
        imagFlag.snp.makeConstraints { make in
            make.width.equalTo(33)
            make.height.equalTo(23)
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(15)
        }
        
        addSubview(imagCod)
        imagCod.snp.makeConstraints { make in
            make.width.equalTo(42)
            make.height.equalTo(15)
            make.top.equalToSuperview().offset(12)
            make.left.equalTo(imagFlag.snp.right).offset(10)
        }
        
        addSubview(textField1)
        textField1.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalToSuperview().offset(7)
            make.left.equalTo(imagCod.snp.right).offset(10)
            make.right.equalToSuperview().offset(-15)
            make.bottom.equalToSuperview().inset(12)
        }
    }
    
}
