//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    var tail: Node<T>?
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }

    var count: Int {
        var currentNode = head
        var count = 0
        while currentNode != nil {
            currentNode = currentNode?.next
            count += 1
            
            
        }
        return count
    }
    
    func append(element newKey: T) {
        if head == nil {
            head = Node(key: newKey)
            return
        }
        var currentNode = head
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode?.next = Node(key: newKey)
    }
    
    func getNode(at index: Int) -> Node<T>? {
        guard index >= 0 else { return nil }
        var counter = 0
        var currentNode = head
        while counter < index {
            currentNode = currentNode?.next
            counter += 1
        }
        return currentNode
    }
    
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode?.key == targetKey { return true }
            currentNode = currentNode?.next
        }
        return false
    }
    
    
    func equals(otherList: LinkedList<T>) -> Bool {
         var currentNode = head
        var otherNode = otherList.head
        var boolz = Bool()
        while currentNode != nil && otherNode != nil {
            if currentNode!.key == otherNode!.key {
                boolz = true
                currentNode = currentNode!.next
                otherNode = otherNode?.next
            } else {
                return false
            }
            
            }
        return boolz
        }
    
    func toArr() -> [T] {
        var currentNode = head
        var arrayOfListed:[T] = []
        while currentNode != nil {
            arrayOfListed.append(currentNode!.key)
            currentNode = currentNode?.next
            
    }
    return arrayOfListed
    }
    func reversed() -> LinkedList<T> {
        return LinkedList<T>()
    }
    
    func removeAll() {
        head = nil
    }
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {
     
    }
    
    static func mergeSortedLists(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
    
    


}

