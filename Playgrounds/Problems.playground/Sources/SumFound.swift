import Foundation

public class SumFound {
  
    public static func sumFound (_ arr : [Int], _ z:Int) -> Bool {
        var intSet  = Set<Int>()
        
        //z = x+i
        for i in arr
        {
            if intSet.contains(z-i) {
                return true
            }
            
            intSet.insert(i)
        }
        return false;
    }
}
