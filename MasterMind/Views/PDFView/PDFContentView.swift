//
//  PDFView.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI

struct PDFContentView: View {
    
    let pdfUrl = Bundle.main.url(forResource: "mastermind", withExtension: "pdf")!
    
    var body: some View {
        PDFViewRep(url: pdfUrl)
    }
}

#Preview {
    PDFContentView()
}
