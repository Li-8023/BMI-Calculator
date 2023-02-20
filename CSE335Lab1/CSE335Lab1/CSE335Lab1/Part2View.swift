//
//  Part2View.swift
//  CSE335Lab1
//
//  Created by lihe5 on 1/18/23.
//

import SwiftUI

struct Part2View: View {
    var body: some View {
        //Text("Part II")
        show2()
    }
}

struct show2: View
{
    @State var height: Double = 0.0
    @State var weight: Double = 0.0
    @State var BMI: String = ""
    @State var result: String = ""
    @State var heightValue: String = ""
    @State var weightValue: String = ""
    @State var color: Color = Color.white
    
    var body: some View{
        VStack{
            Text("BMI Calculator").foregroundColor(.blue)
            
            HStack{
                Text("Height: ").padding()
                Slider(value:$height, in: 0...130, step:0.01,
                       onEditingChanged: { _ in self.calculateBMI()
                    
                }).padding()
                    .accentColor(Color.purple)
                
            }
            Text(heightValue)
            HStack{
                Text("Weight: ").padding()
                Slider(value:$weight, in: 60...280, step:0.01,
                       onEditingChanged:{ _ in self.calculateBMI()
                    
                }).padding()
                    .accentColor(Color.purple)
                
            }
            Text(weightValue)
            HStack{
                Text("BMI: ").padding()
                Text(BMI)
            }
            
            Text(result)
                .foregroundColor(color)
            
        }
    }
    
    func calculateBMI()
    {
        let intWeight = Double(self.weight)
        let intHeight = Double(self.height)
    
//        let doubleWeight:Double = intWeight!
//        let doubleHeight:Double = intHeight!
        
        var multiHeight: Double = 0.0
        multiHeight = Double(intHeight*intHeight)
        var BMINum:Double = 0.0
        BMINum = (intWeight/multiHeight)*703
        self.BMI = String(BMINum)
        if BMINum < 18.0
        {
            self.result = "You are underwright"
            self.color = Color.blue
            //self.result.foreg
            //self.result.textColor = UIColor.blue
        }
        else if BMINum >= 18 && BMINum < 25
        {
            self.result = "You are normal"
            self.color = Color.green
            //self.result.textColor = UIColor.green
            
        }
        else if BMINum >= 25 && BMINum < 30
        {
            self.result = "You are pre-obese"
            self.color = Color.purple
            
            //self.result.textColor = UIColor.purple
        }
        else
        {
            self.result = "You are obese"
            self.color = Color.red
            //self.result.textColor = UIColor.red
        }
        self.heightValue = String(self.height)
        self.weightValue = String(self.weight)
        print("BMI: \(BMI)")
    }
    
}
struct Part2View_Previews: PreviewProvider {
    static var previews: some View {
        Part2View()
    }
}
