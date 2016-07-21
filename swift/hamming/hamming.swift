//
//  hamming.swift
//  helloWorld
//
//  Created by Raul Galindo on 29/01/16.
//  Copyright © 2016 exercism.io. All rights reserved.
//

import Foundations

class Hamming {

    static func compute(FirstDnaStrand: String, against SecondDnaStrand: String) -> Int? {

        let firstDnaStrandArray = Array(FirstDnaStrand.characters)
        let secondDnaStrandArray = Array(SecondDnaStrand.characters)

        if firstDnaStrandArray.count != secondDnaStrandArray.count {
            return nil
        }

        var mutationsCount = 0

        for (index, nucleotide) in firstDnaStrandArray.enumerate() {
            let againstNucleotide = secondDnaStrandArray[index]
            if (nucleotide != againstNucleotide) {
             mutationsCount += 1
            }
        }

        return mutationsCount
    }

}
