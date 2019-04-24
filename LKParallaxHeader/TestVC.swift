//TestVC.swift
/*
 * LKParallaxHeader
 * Created by penumutchu.prasad@gmail.com on 24/04/19
 * is a product created by abnboys 
 * For abnboys in the LKParallaxHeader in the LKParallaxHeader
 * Here the permission is granted to this file with free of use anywhere in any iOS Projects.
 * Copyright © 2019 abnboys.com. All rights reserved.
*/

import UIKit

class TestVC: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let headerView = UIView()
    private var headerHeight: CGFloat = 250
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        UINavigationBar.appearance().tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupTableView()
    }
    
    private func setupTableView() {
        
        
        self.tableView.contentInset = UIEdgeInsets.init(top: headerHeight, left: 0, bottom: 0, right: 0)
        
        headerView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: headerHeight)
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let stack = UIStackView(arrangedSubviews: [redView, greenView])
        stack.axis = .vertical
        stack.spacing = 3
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.addSubview(stack)
        
        headerView.addConstraints([
            
            stack.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 20),
            stack.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            stack.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 0.75),
            stack.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        view.addSubview(headerView)
        
    }
    
    
    
}

extension TestVC: UITableViewDelegate, UITableViewDataSource {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let y = headerHeight - (scrollView.contentOffset.y + headerHeight)
        let height = min(max(y, 150), headerHeight)
        
        headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: height)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 22
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init()
        cell.textLabel?.text = "eoewtuioqtuoi qwityioqhnfd,sv"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
}

