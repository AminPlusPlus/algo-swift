import Foundation

public class SecondSmallest {
   
    public static func secondSmallest(_ arr : [Int]) -> Int {
        var firstSmall = 0;
        var secondSmall = 1;
        
        for i in 0..<arr.count {
            if arr[firstSmall] > arr[i]  {
                secondSmall = firstSmall;
                firstSmall = i;
            }
            
        }

        for i  in 0..<arr.count {
            if i != firstSmall && arr[secondSmall] > arr[i] {
                secondSmall = i
            }
        }
        
        return arr[secondSmall] 
        
    }
    
}
