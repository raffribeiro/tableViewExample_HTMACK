//
//  ViewController.swift
//  tableViewExamplw
//
//  Created by Rogerio Bordignon on 11/12/15.
//  Copyright © 2015 Rogerio Bordignon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var myTable: UITableView!
    var pokemons: [Pokemon]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTable.dataSource = self
        
        let pkm1: Pokemon = Pokemon(name: "Squirtle", nameFoto: "squirtle")
        let pkm2: Pokemon = Pokemon(name: "Charmander", nameFoto: "charmander")
        let pkm3: Pokemon = Pokemon(name: "Ninetales", nameFoto: "ninetales")
        let pkm4: Pokemon = Pokemon(name: "Snorlax", nameFoto: "snorlax")
        
        pokemons = [pkm1,pkm2,pkm3,pkm4]
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
      
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let auxCell = tableView.dequeueReusableCellWithIdentifier("myCell") as! myCell
        
        auxCell.lblCell.text = pokemons[indexPath.row].name
        auxCell.imgCell.image = UIImage(named: pokemons[indexPath.row].nameFoto)
        
        
        return auxCell
    }


}

