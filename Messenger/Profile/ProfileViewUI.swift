//
//  ProfileViewUI.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit
import FirebaseAuth

protocol ProfileViewUIDelegate {
    func notifyNextView()
    func notifySheet()
}

class ProfileViewUI: UIView{
    var delegate: ProfileViewUIDelegate?
    var navigationController: UINavigationController?
    let data = ["Log out"]
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 40.0)
        return label
    }()
    
    
       private let tableView: UITableView = {
           let tableView = UITableView()
           tableView.translatesAutoresizingMaskIntoConstraints = false
           tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
           return tableView
       }()
    
    private lazy var item1Button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Chats", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.addTarget(self, action:#selector(tabBarTouched), for: .touchUpInside)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    private lazy var item2Button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    
    public convenience init(
        navigation: UINavigationController,
        delegate: ProfileViewUIDelegate){
            self.init()
            self.delegate = delegate
            self.navigationController = navigation
            
            setUI()
            setConstraints()
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUI(){
        self.backgroundColor = .white
        self.addSubview(titleLabel)
        self.addSubview(item1Button)
        self.addSubview(item2Button)
        tableView.dataSource = self
        tableView.delegate = self
        self.addSubview(tableView)
    }
    
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: item1Button.topAnchor),
            
            item1Button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            item1Button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            item1Button.trailingAnchor.constraint(equalTo: self.centerXAnchor),

                item2Button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                item2Button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                item2Button.leadingAnchor.constraint(equalTo: self.centerXAnchor),
            
        ])
    }
    @objc func tabBarTouched(){
        self.delegate?.notifyNextView()
        }
    
}


extension ProfileViewUI: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.textColor = .red
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("charging")
        self.delegate?.notifySheet()
    }
}
