//
//  LoginView.swift
//  TytoTeamTaskManager
//
//  Created by Raphael Cerqueira on 04/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color(#colorLiteral(red: 0.9887446761, green: 0.8912813067, blue: 0.5518046021, alpha: 1)).edgesIgnoringSafeArea(.top)
            
            VStack {
                Spacer()
                
                Text("😳")
                    .font(.system(size: 84))
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Log in")
                        .font(.system(size: 44, weight: .bold))
                    
                    Text("Log in to continue")
                        .foregroundColor(Color.gray)
                        .padding(.top, 8)
                    
                    Text("Email")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top)
                    
                    HStack {
                        TextField("Email", text: self.$email)
                            .autocapitalization(.none)
                            .padding(.leading)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color(#colorLiteral(red: 0.9384949803, green: 0.9327322841, blue: 0.9589788318, alpha: 1)))
                    .cornerRadius(10)
                    
                    Text("Password")
                        .font(.system(size: 14, weight: .bold))
                        .padding(.top)
                    
                    HStack {
                        SecureField("Password", text: self.$password)
                            .padding(.leading)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color(#colorLiteral(red: 0.9384949803, green: 0.9327322841, blue: 0.9589788318, alpha: 1)))
                    .cornerRadius(10)
                    
                    Button(action: {
                        
                    }) {
                        Text("Login")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color(#colorLiteral(red: 0.9253616929, green: 0.2798935175, blue: 0.4634540081, alpha: 1)))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                            .padding(.top)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Forgot password?")
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .foregroundColor(Color.blue)
                            .padding(.top)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Create Account")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .foregroundColor(Color.black)
                            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray, lineWidth: 2))
                            .padding(.top, 8)
                    }
                }
                .padding(30)
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(40)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
