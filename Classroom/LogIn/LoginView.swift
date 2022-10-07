import SwiftUI

struct LoginView: View {
    @AppStorage("AUTH_KEY") public var authorization = false
    @AppStorage("USER_NAME") var username = ""
    @AppStorage("USER_PASSWORD") var password = ""
    
    @State var alert = false
    
    private var sampleUsername = "user1"
    private var samplePassword = "qwerty"
    
    var body: some View {
        ZStack() {
            LinearGradient(colors: [Color("pinkMain"), Color("blueMain"), Color("pinkMain")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Authorization")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.bottom)
                TextField("username", text: $username)
                    .padding()
                    .background(Color("pinkSecond"))
                    .cornerRadius(10)
                SecureField("password", text: $password)
                    .padding()
                    .background(Color("pinkSecond"))
                    .cornerRadius(10)

                
                HStack{
                    Button("Log in") {
                        loginCheck()
                        password = ""
                    }
                    .alert(isPresented: $alert){
                        Alert(title: Text("Oops!"), message: Text("User name or password is incorrect"), dismissButton: .destructive(Text("Try again")))
                    }
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color("pinkMain").blur(radius: 5.0))
                    .cornerRadius(10)
                    
                }
                .padding(.top)
                
            }
            .padding(50)
            .background(.white)
            .frame(width: 300)
            .cornerRadius(20)
            
        }
    }
    
    func loginCheck(){
        if(self.username == sampleUsername && self.password == samplePassword){
            authorization.toggle()
        }else{
            alert.toggle()
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
