//
//  ViewController.swift
//  CoreDataStack
//
//  Created by RICHARD CRAWFORD on 1/10/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoreDataStack.shared.performForegroundTask { (context) in
            let entity = Entity(context: context)
            
            do {
                try context.obtainPermanentIDs(for: [entity])
            } catch {
                print("Error obtaining permanent ID for session info record")
                return
            }
            
            CoreDataStack.shared.saveViewContextAndWait()
            
            DispatchQueue.main.async {
                guard entity.objectID.isTemporaryID == false else {
                    print("ObjectID is temporary")
                    return
                }
                
                print("Success")
            }
        }
    }


}

