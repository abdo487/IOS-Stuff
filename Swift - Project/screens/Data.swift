//
//  Data.swift
//  ProjectSwift
//
//  Created by user on 3/12/24.
//  Copyright © 2024 hassan. All rights reserved.
//

import Foundation

public class Continent{
    let name: String
    let countries:[Country]
    var isOpened:Bool=false
    
    init(name: String, countries:[Country], isOpened:Bool=false) {
        self.name=name
        self.countries=countries
        self.isOpened=isOpened
    }
}
public class Country{
    let name: String
    let flag: String
    let description: String
    init(name: String, flag: String, description: String) {
        self.name=name
        self.flag=flag
        self.description=description
    }
}

public let CONTINENTS: [Continent] = [
    Continent(
        name: "Africa",
        countries: [
            Country(name: "Morocco", flag: "https://flagsapi.com/MA/shiny/64.png", description: "Some Description about Morocco"),
            Country(name: "Kenya", flag: "https://flagsapi.com/KE/shiny/64.png", description: "Some Description about Kenya"),
            Country(name: "South Africa", flag: "https://flagsapi.com/ZA/shiny/64.png", description: "Some Description about South Africa"),
            Country(name: "Nigeria", flag: "https://flagsapi.com/NG/shiny/64.png", description: "Some Description about Nigeria"),
            Country(name: "Egypt", flag: "https://flagsapi.com/EG/shiny/64.png", description: "Some Description about Egypt")
        ]
    ),
    Continent(
        name: "Europe",
        countries: [
            Country(name: "France", flag: "https://flagsapi.com/FR/shiny/64.png", description: "Some Description about France"),
            Country(name: "Germany", flag: "https://flagsapi.com/DE/shiny/64.png", description: "Some Description about Germany"),
            Country(name: "Spain", flag: "https://flagsapi.com/ES/shiny/64.png", description: "Some Description about Spain"),
            Country(name: "Italy", flag: "https://flagsapi.com/IT/shiny/64.png", description: "Some Description about Italy"),
            Country(name: "United Kingdom", flag: "https://flagsapi.com/GB/shiny/64.png", description: "Some Description about United Kingdom")
        ]
    ),
    Continent(
        name: "Asia",
        countries: [
            Country(name: "China", flag: "https://flagsapi.com/CN/shiny/64.png", description: "Some Description about China"),
            Country(name: "India", flag: "https://flagsapi.com/IN/shiny/64.png", description: "Some Description about India"),
            Country(name: "Japan", flag: "https://flagsapi.com/JP/shiny/64.png", description: "Some Description about Japan"),
            Country(name: "South Korea", flag: "https://flagsapi.com/KR/shiny/64.png", description: "Some Description about South Korea"),
            Country(name: "Russia", flag: "https://flagsapi.com/RU/shiny/64.png", description: "Some Description about Russia")
        ]
    ),
    Continent(
        name: "North America",
        countries: [
            Country(name: "United States", flag: "https://flagsapi.com/US/shiny/64.png", description: "Some Description about United States"),
            Country(name: "Canada", flag: "https://flagsapi.com/CA/shiny/64.png", description: "Some Description about Canada"),
            Country(name: "Mexico", flag: "https://flagsapi.com/MX/shiny/64.png", description: "Some Description about Mexico"),
            Country(name: "Cuba", flag: "https://flagsapi.com/CU/shiny/64.png", description: "Some Description about Cuba"),
            Country(name: "Jamaica", flag: "https://flagsapi.com/JM/shiny/64.png", description: "Some Description about Jamaica")
        ]
    ),
    Continent(
        name: "South America",
        countries: [
            Country(name: "Brazil", flag: "https://flagsapi.com/BR/shiny/64.png", description: "Some Description about Brazil"),
            Country(name: "Argentina", flag: "https://flagsapi.com/AR/shiny/64.png", description: "Some Description about Argentina"),
            Country(name: "Colombia", flag: "https://flagsapi.com/CO/shiny/64.png", description: "Some Description about Colombia"),
            Country(name: "Peru", flag: "https://flagsapi.com/PE/shiny/64.png", description: "Some Description about Peru"),
            Country(name: "Chile", flag: "https://flagsapi.com/CL/shiny/64.png", description: "Some Description about Chile")
        ]
    )
]
