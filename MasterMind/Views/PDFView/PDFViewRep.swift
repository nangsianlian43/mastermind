//
//  PDFViewRep.swift
//  MasterMind
//
//  Created by Jubal Thang on 11/12/24.
//

import SwiftUI
import PDFKit

struct PDFViewRep: UIViewRepresentable {
    let url: URL
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: url)
        return pdfView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // just leave empty we won't need to update the pdf at this time
    }
}
