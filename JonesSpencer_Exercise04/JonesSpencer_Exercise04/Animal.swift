//  Animal.swift
//  JonesSpencer_Exercise04
//  Created by Spencer Jones on 3/20/24.

import Foundation

class Animal {
    
    // Stored Properties
    var species: String
    var population: Int
    var isDomesticated: Bool
    
    
    // Computed Properties
    // If population is less than 2500 then endangered = true
    var isEndangered: Bool {
        get {
            if population < 2500 {
                return true
            }
            else {
                return false
            }
        }
    }
    
    // if domesticated is true then you can have as a pet
    var canHaveAsPet: String {
        get {
            if isDomesticated == true {
                return "You can have a \(species) as a pet!"
            }
            else {
                return "You can not have a \(species) as a pet!"
            }
        }
    }
        
        
    // Instance Methods
    // If reproduce is used the the population will be incremented by 1
    func reproduce() -> String {
        let randomNumber = Int.random(in: 1...3)
        population += randomNumber
        return "The \(species) had \(randomNumber) offspring! The population of \(species) is now \(population)."
    }
    
    // if not domesticated the animal hunts for survial
    func hunt() -> String {
        if isDomesticated {
            return "The \(species) may hunt for recreation but does not rely on it for survival."
        } else {
            return "The \(species) hunts for food in its natural habitat for survival."
        }
    }
    
    // Initializers
    init() {
        species = "dog"
        population = 900000000
        isDomesticated = true
    }
    
    init(species: String, population: Int, isDomesticated: Bool) {
        self.species = species
        self.population = population
        self.isDomesticated = isDomesticated
    }
}
