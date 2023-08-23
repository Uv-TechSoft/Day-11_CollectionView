//
//  ViewController.swift
//  TabelView_XIB_NIB
//
//  Created by Imam MohammadUvesh on 09/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewX: UITableView!
    var arrayData = ["FirstNNAME","LastNNAME","ThirdNName"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "XIBTableViewCell", bundle: nil); tableViewX.register(nib, forCellReuseIdentifier: "XIBTableViewCell")
        
    }


}

extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableViewX.dequeueReusableCell(withIdentifier: "XIBTableViewCell") as? XIBTableViewCell
        else
        {
            return UITableViewCell()
        }
//        let contact = arrayData[indexPath.row]
        cell.labelOne.text = arrayData[indexPath.row]
        cell.labelTwo.text = arrayData[indexPath.row]
        return cell
    }
}
