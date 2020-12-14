//
//  main.swift
//  alog
//
//  Created by Aminjoni Abdullozoda on 12/11/20.
//

import Foundation

var tree = Tree<String>.append(["Jack","B","A","Hey"])

Tree<String>.traverseBFS(tree)

print("________")
var linked = LinkedList<Int>.append(values: [1,2,3])

LinkedList.traverse(head: linked)
