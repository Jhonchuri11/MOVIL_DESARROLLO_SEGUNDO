//
//  Did2ViewController.swift
//  S5Churivanti
//
//  Created by Mac19 on 13/04/24.
//

import UIKit

class Did2ViewController: UIViewController {

    var contenidoCeldas: String?
    
    @IBOutlet var DetailB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(contenidoCeldas!)
        
        DetailB.text = contenidoCeldas
        
    }
    

}
