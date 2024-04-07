//
//  main.swift
//  SwiftDecisionTree
//
//  Created by Angelos Staboulis on 7/4/24.
//

import Foundation
import GameKit
let tree = GKDecisionTree(attribute: "anrgy?" as NSObjectProtocol)
let root = tree.rootNode
let attack = root?.createBranch(value: true, attribute: "attack" as NSObjectProtocol)
let goAway = root?.createBranch(value: false, attribute: "goAway" as NSObjectProtocol)
goAway?.createBranch(weight: 9, attribute: "Left" as NSObjectProtocol)
goAway?.createBranch(weight: 1, attribute: "Right" as NSObjectProtocol)
let answers = ["anrgy?" : false]
let decisionAction = tree.findAction(forAnswers: answers as [AnyHashable : NSObjectProtocol])
print(decisionAction!)

