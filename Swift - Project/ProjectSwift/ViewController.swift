//
//  ViewController.swift
//  ProjectSwift
//
//  Created by user on 2/29/24.
//  Copyright © 2024 hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    let imageCountry = UIImageView()
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let capital = UILabel()

    private let tableView:UITableView={
        let tableView=UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var continents=[Continent]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        //set up models
        continents = CONTINENTS
        view.addSubview(tableView)
        tableView.delegate=self
        tableView.dataSource=self
        tableView.frame=view.bounds
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int )->Int{
        let section = continents[section]
        if section.isOpened{
            return section.countries.count+1
        }else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView,cellForRowAt indexPath : IndexPath)->UITableViewCell{
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if indexPath.row == 0 {
            cell.backgroundColor = .systemGray
//            cell.textLabel?.textColor = .
            cell.textLabel?.text=continents[indexPath.section].name
            cell.accessoryType = .disclosureIndicator
        }else{
            cell.textLabel?.text=continents[indexPath.section].countries[indexPath.row - 1].name
            cell.backgroundColor = .systemGray6
            
        }
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0{
            continents[indexPath.section].isOpened = !continents[indexPath.section].isOpened
            tableView.reloadSections([indexPath.section], with: .none)
        }else{
            let COUNTRY: Country = continents[indexPath.section].countries[indexPath.row - 1]
            let vc = DetailsViewController()
            vc.country = COUNTRY
        
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

