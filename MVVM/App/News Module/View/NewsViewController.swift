//
//  NewsViewController.swift
//  MVVM
//
//  Created by Leandro Ramos on 8/6/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    let url = URL(string: Constants.Url.urlString)!
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        Services().getArticles(url: url) { _ in
            
        }
        setUpLayout()
    }
    
}

extension NewsViewController: ViewLayout {
    
    func setUpLayout() {
        addSubviews()
        setupConstraints()
        navigationLayout()
    }
    
    func addSubviews() {
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    func navigationLayout() {
        title = Constants.Titles.navigationTitle
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
