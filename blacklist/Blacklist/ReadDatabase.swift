//
//  ReadDatabase.swift
//  Blacklist
//
//  Created by Ravin Bhakta on 1/10/23.
//

import UIKit
import Firebase
import FirebaseDatabaseSwift

class ReadDatabase: UIViewController{
    
    var ref: DatabaseReference!

    
    @IBOutlet var tstLbl: UILabel!
    
    override func viewDidLoad() {
        ref = Database.database().reference().root
        super.viewDidLoad()
        ref.observeSingleEvent(of: .value, with: {(snapshot) in
            self.tstLbl.text = " There are \(snapshot.childrenCount) children found"
            if(snapshot.childrenCount > 0){
                for data in snapshot.children.allObjects as! [DataSnapshot]{
                    if let data = data.value as? [String: Any]{
                        let num = data["num"] as? String
                        let name = data["name"] as? String
                        
                        print("NUM: \(num)")
                    }
                }
            }
        })
        
        
    }
}
