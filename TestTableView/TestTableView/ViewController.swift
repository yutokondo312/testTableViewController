//
//  ViewController.swift
//  TestTableView
//
//  Created by 近藤優斗 on 2019/06/28.
//  Copyright © 2019年 kondoyuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let a = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a.count 
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = a[indexPath.row]
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

