//
//  PokeData.swift
//  pokemonAPI
//
//  Created by MCS on 4/15/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

class PokemonData: Codable {
    
    var  abilities: [PokeData]
    
    init(abilities: [PokeData]) {
        self.abilities = abilities
    }
    
    init(dictionary: [String: Any]) throws {
        guard let arrayAbilities = dictionary["abilities"] as? [[String: Any]] else {
            throw NetworkErrors.invalidDictionary
        }
        self.abilities = arrayAbilties.compactMap {try? PokeData(dictionary: $0)}
    }
}

class PokeData: Codable {
    
    var <#name#> = <#value#>
    
}
