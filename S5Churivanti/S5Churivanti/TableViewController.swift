//
//  TableViewController.swift
//  S5Churivanti
//
//  Created by Mac19 on 13/04/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    // Instanciando como referencia al indentificador
    
    @IBOutlet var Tabla: UITableView!
    
    // Creando un arreglo de clases
    
    var contenidoCeldas = ["Usando","TableView","en","Aplicativo","IOS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.delegate = self
        Tabla.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = Tabla.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var tableContent =  UIListContentConfiguration.cell()
        
        tableContent.text = contenidoCeldas[indexPath.row]
        
        
        cell.contentConfiguration = tableContent
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "secondSegue", sender: contenidoCeldas[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondSegue" {
            let secondVieew: Did2ViewController = segue.destination as! Did2ViewController
            secondVieew.contenidoCeldas = sender as? String
        }
    }
}
