//
//  DataStore.swift
//  SpringHomeWork
//
//  Created by Alena Belenets on 08.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {

    static let shared = DataStore()

    let animations = AnimationPreset.allCases

    let curves = AnimationCurve.allCases

    private init() {}
}
