//
//  ViewController.swift
//  TableviewUsingXIbDemo
//
//  Created by Raghavendra on 04/05/19.
//  Copyright © 2019 Raghavendra. All rights reserved.
//

import UIKit


struct CellData {
    
    let text:String!
    let image:UIImage!
    
}


var arrayOfCellData = [CellData]()

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell  =  Bundle.main.loadNibNamed("TableviewCell", owner: self, options: nil)?.first as! TableviewCell
        
        cell.imageViewDisplay.image =  arrayOfCellData[indexPath.row].image
        cell.labelDisplay.text = arrayOfCellData[indexPath.row].text
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    
        arrayOfCellData  = [CellData(text: "One",image: #imageLiteral(resourceName: "1")),CellData(text: "two", image:#imageLiteral(resourceName: "2.jpeg") ),CellData(text: "three", image:#imageLiteral(resourceName: "3.jpeg") )]
    }


}

