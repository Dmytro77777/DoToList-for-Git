//
//  DetailViewController.swift
//  LIST
//
//  Created by Dima on 5/14/19.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var titleTextfield: UITextView! = UITextView()
    
    var toDoData: NSDictionary = NSDictionary()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleTextfield.isUserInteractionEnabled = false
        
        titleTextfield.text = toDoData.object(forKey: "itemNote") as? String
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
