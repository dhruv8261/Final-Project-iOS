//
//  TableViewController.swift
//  Final Project
//
//  Created by Xcode User on 2018-12-08.
//  Copyright © 2018 Dhruv Patel. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var listData = ["Dhruv Patel", "AAA", "BBB", "CCC", "DDD"]
    var imageData = ["AvatarRickButton.png","AvatarMortyButton.png","AvatarNinjaButton.png","AvatarRickButtonBW.png", "AvatarMortyButtonBW.png"]
    var siteData = ["dhruv8261@gmail.com",
                    "AAA@AAA.com",
                    "BBB@BBB.com",
                    "CCC@CCC.com",
                    "DDD@DDD.com"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SiteCell ?? SiteCell(style: .default, reuseIdentifier: "cell")
        
        let rowNum = indexPath.row
        
        tableCell.primaryLabel.text = listData[rowNum]
        tableCell.secondaryLabel.text = siteData[rowNum]
        tableCell.myImageView.image = UIImage(named: imageData[rowNum])
        
        return tableCell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
