import SwiftUI

struct AlertView{
    var title : Text
    var message: Text
    var button : Text
}

struct AlertStruct{
    static let win = AlertView(title: Text("You win!🥳"), message: Text("You are so smart, keep going!"), button: Text("Keep going!"))
    
}
