//
//  PDFView.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI

struct PDFContentView: View {
    
    let pdfUrl = Bundle.main.url(forResource: "PDF", withExtension: "pdf")!
    
    var body: some View {
        PDFViewRep(url: pdfUrl)
            .scaledToFill()
    }
}

#Preview {
    PDFContentView()
}