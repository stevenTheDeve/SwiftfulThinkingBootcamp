//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Estevan Hinojosa on 10/13/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date ()
    
    var dateFormatter: DateFormatter {
        let formatter  = DateFormatter ()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }
    var body: some View {
        VStack {
            Text("Selected Date is:")
            Text(dateFormatter.string(from:selectedDate))
                .font(.title)
            //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: <#T##DatePicker<Text>.Components#>)
                      DatePicker("Select a Date", selection: $selectedDate)
                        .accentColor(Color.red)
                        .datePickerStyle(CompactDatePickerStyle())
                }
        }

}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
