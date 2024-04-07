//
//  DecisionTree.swift
//  SwiftDecisionTree
//
//  Created by Angelos Staboulis on 7/4/24.
//

import Foundation
import GameKit
class DecisionTree{
    let tree = GKDecisionTree(attribute: "anrgy?" as NSObjectProtocol)
    var goAway = GKDecisionNode()
    static let shared = DecisionTree()
    private init(){}
    func createMainBranch(){
        guard let root = tree.rootNode else {
            return
        }
        let _ = root.createBranch(value: true, attribute: "attack" as NSObjectProtocol)
        goAway = root.createBranch(value: false, attribute: "goAway" as NSObjectProtocol)
        
    }
    func createAwayBranches(){
        goAway.createBranch(weight: 9, attribute: "Left" as NSObjectProtocol)
        goAway.createBranch(weight: 1, attribute: "Right" as NSObjectProtocol)
    }
    
    func createDecisionAction(){
        let answers = ["anrgy?" : false]
        guard let decisionAction = tree.findAction(forAnswers: answers as [AnyHashable : NSObjectProtocol]) else {
            return
        }
        print(decisionAction)
    }
}
