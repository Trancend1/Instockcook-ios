import Foundation

struct Tool : Identifiable, Hashable{
    let id = UUID()
    let name : String
    var isSelected: Bool = false
}

