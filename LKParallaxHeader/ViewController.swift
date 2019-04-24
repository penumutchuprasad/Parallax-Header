//ViewController.swift
/*
 * LKParallaxHeader
 * Created by penumutchu.prasad@gmail.com on 24/04/19
 * is a product created by abnboys 
 * For abnboys in the  in the LKParallaxHeader
 * Here the permission is granted to this file with free of use anywhere in any iOS Projects.
 * Copyright © 2019 abnboys.com. All rights reserved.
*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    weak var parallaxHeaderView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupHeaderView()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

        UINavigationBar.appearance().tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    private func setupHeaderView() {
        
        let headerView = UIView()
        headerView.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        parallaxHeaderView = headerView

        tableView.parallaxHeader.view = headerView
        tableView.parallaxHeader.height = 250
        tableView.parallaxHeader.minimumHeight = 150
        tableView.parallaxHeader.mode = .centerFill

        tableView.parallaxHeader.parallaxHeaderDidScrollHandler = { parallaxHeader in
            //update headerview sub views here
            
        }
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
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

