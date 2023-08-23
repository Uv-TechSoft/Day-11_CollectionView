//
//  SecondViewController.swift
//  UITableViewCustom
//
//  Created by Yogesh Patel on 02/11/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var contactArray = [ContactModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let nib = UINib(nibName: "ContactCellXIB", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ContactCellXIB")

        configuration()
        // Do any additional setup after loading the view.
    }
    

}


// MARK: - Methods
extension SecondViewController{
    
    func configuration(){
        contactConfiguration()
    }
    
    func contactConfiguration(){
        contactArray = [
            ContactModel(fisrtname: "Mihir", lastname: "Kumar", age: 22, profileImage: UIImage(systemName: "m.circle.fill")),
            ContactModel(fisrtname: "Uvesh", lastname: "Imam", age: 23, profileImage: UIImage(systemName: "u.circle.fill")),
            ContactModel(fisrtname: "Yogesh", lastname: "Patel", age: 24, profileImage: UIImage(systemName: "y.circle.fill")),
            ContactModel(fisrtname: "Parth", lastname: "Jadav", age: 25, profileImage: UIImage(systemName: "p.circle.fill")),
        ]
    }
}



// MARK: - UITableView Datasource Methods
extension SecondViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCellXIB") as? ContactCellXIB else{
            return UITableViewCell()
        }
        
        let contact = contactArray[indexPath.row]
        cell.contactConfiguration(contactModel: contact)
        return cell
        
    }
}
