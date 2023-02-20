//
//  part1View.swift
//  CSE335Lab1
//
//  Created by lihe5 on 1/18/23.
//

import SwiftUI

struct part1View: View {
    var body: some View {
        //Text("Part I")
        show()
    }
}

struct show: View
{
    @State var height: String = ""
    @State var weight: String = ""
    @State var BMI: String = ""
    @State var result: String = ""
    @State var color: Color = Color.white
    //@IBOutlet weak var result: UILabel!
    var body: some View{
        VStack{
            Text("BMI Calculator").foregroundColor(.blue)
            //Spacer()
            HStack{
                Text("Height: ").padding()
                TextField("height here", text: $height)
            }
            
            HStack{
                Text("Weight: ").padding()
                TextField("weight here", text: $weight)
            }
            
            HStack{
                Text("BMI: ").padding()
                Text(BMI)
                
            }
            
            Text(result)
                .foregroundColor(color)
            
            Button(action: {
                //let BMINum:Double?
                //let heightValue = Int(self.height)
                //let weightValue = Int(self.weight)
                //let multiHeight: = Double(heightValue * heightValue)
                let intWeight = Double(self.weight)
                let intHeight = Double(self.height)
            
                let doubleWeight:Double = intWeight!
                let doubleHeight:Double = intHeight!
                
                var multiHeight: Double = 0.0
                multiHeight = Double(doubleHeight*doubleHeight)
                var BMINum:Double = 0.0
                BMINum = (doubleWeight/multiHeight)*703
                
                //let BMINum:Double = Double((intWeight/(intHeight*intHeight))*703)
                self.BMI = String(BMINum)
                if BMINum < 18.0
                {
                    self.result =  "You are underwright"
                    self.color = Color.blue
                }
                else if BMINum >= 18 && BMINum < 25
                {
                    self.result = "You are normal"
                    self.color = Color.green
                    
                }
                else if BMINum >= 25 && BMINum < 30
                {
                    self.result = "You are pre-obese"
                    self.color = Color.purple
                }
                else
                {
                    self.result = "You are obese"
                    self.color = Color.red
                }
            }){
                Text("Calculate BMI")
            }
            .buttonStyle((.borderedProminent))
        }
    }
    
}


struct part1View_Previews: PreviewProvider {
    static var previews: some View {
        part1View()
    }
}
