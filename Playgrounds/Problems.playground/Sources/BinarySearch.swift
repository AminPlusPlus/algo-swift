import Foundation

public class BinarySearch {
   public func binarySearch(_ arr: [Int],_ num : Int) -> (number:Int,index:Int) {
        var left = 0
        var right = arr.count-1;
        
        while left<=right {
            let mid = (left + right) / 2;
        
            if arr[mid] == num {
                return (arr[mid],mid)
            } else if num < arr[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return (-1,-1);
    }

   public func binarySearchRecurs(_ arr:[Int], _ k:Int) -> (number:Int,index:Int) {
        let left = 0
        let right = arr.count-1;
        
        return lookSide(arr, k, left, right)
    }

    private func lookSide (_ arr:[Int], _ num : Int , _ left : Int, _ right:Int) -> (number:Int,index:Int)  {
        
        if left<=right {
            let mid = (left + right) / 2;
            
            if arr[mid] == num {
                return (arr[mid],mid)
            } else if num < arr[mid] {
                return lookSide(arr, num, left, mid-1)
            } else {
                return lookSide(arr, num, mid+1, right)
            }
        
        }
       return (-1,-1);
    }

    func startBinarySearch() {
        let start = CFAbsoluteTimeGetCurrent()
        binarySearch([1,2,3,4,5], 1)
        let end = CFAbsoluteTimeGetCurrent() - start

    }

    startBinarySearch()

}
