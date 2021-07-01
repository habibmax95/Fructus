//
//  SettingsView.swift
//  Fructus
//
//  Created by Office on 01/07/2021.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(0)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential neutrients, including potassium, dietry fiber and many more.")
                                .font(.footnote)
                        }
                        
                        
                    }
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)

                        Text("If you wish you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                               Text("Restarted".uppercased())
                               .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.green)
                            } else {
                               Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                     .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                          Color(UIColor.tertiarySystemBackground)
                          .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                        
                    }
                    
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Application", labelImage: "iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Habibur Rahman")
                        SettingsRowView(name: "Designer", content: "Habibur Rahman")
                        SettingsRowView(name: "Compatibility", content: "IOS 14")
                        SettingsRowView(name: "Instagram", linkLabel: "Instagram",linkDestination: "instagram.com/habibmax95")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
