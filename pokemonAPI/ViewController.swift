//
//  ViewController.swift
//  pokemonAPI
//
//  Created by MCS on 4/15/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, Codable {
    var name: String
    var ability: String
    var url: String
    
    init(name: String, : String, url: String) {
        self.name = name
        self.value = value
        self.url = url
    }
    
    init(dictionary: [String: Any]) throws {
        guard let stringName = dictionary["name"] as? String, let  stringValue = dictionary["value"] as? String else{
            throw NetworkErrors.invalidDictionary
        }
        self.name = stringName
        self.value = stringValue
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    

}

enum NetworkErrors: Error {
    case invalidDictionary
}

