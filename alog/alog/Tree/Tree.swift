import Foundation


public class Tree {
   public var value: Int
   public var left: Tree?
   public var right: Tree?

   public init(value: Int) {
     self.value = value
     left = nil
     right = nil
   }
 }

extension Tree {
    /// Appending element to tree through array
    /// - Parameter arr: Passing array Int
    /// - Returns: create Tree following array
    public static func append (_ arr : [Int]) -> Tree {
        let headNode = Tree(value: arr[0])
        for i in 1..<arr.count {
            
            var currentNode : Tree? = headNode
            while currentNode != nil {
                if (arr[i] > currentNode!.value){
                    if currentNode?.right != nil {
                       currentNode = currentNode?.right
                       continue
                    }
                    currentNode?.right = Tree(value: arr[i])
                    break
                } else
                {
                if currentNode?.left != nil {
                   currentNode = currentNode?.left
                   continue
                }
                    currentNode?.left = Tree(value: arr[i])
                    break
                }
            }
        }
        return headNode
    }
    
    
    
    public static func traverseBFS(_ bfs : Tree) {
        print(bfs.value)
  
        if bfs.right != nil {
            traverseBFS(bfs.right!)
        }
        if bfs.left != nil{
            traverseBFS(bfs.left!)
        }
        
        return
    }
}
