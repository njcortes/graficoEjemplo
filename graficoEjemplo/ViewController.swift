//
//  ViewController.swift
//  graficoEjemplo
//
//  Created by Nestor Cortés on 06-07-19.
//  Copyright © 2019 Nestor Cortés. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var chartLinea: LineChartView!
    @IBOutlet weak var chartBarraHorizontal: HorizontalBarChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        generaGraficoBarra()
        generaGraficoLinea()
    }

    func generaGraficoBarra () {
        let dato1 = BarChartDataEntry(x: 1.0, y: Double(7))
        let dato2 = BarChartDataEntry(x: 2.0, y: Double(6))
        let dato3 = BarChartDataEntry(x: 3.0, y: Double(3))
        
        let dataSet = BarChartDataSet(entries: [dato1, dato2, dato3], label: "Leyenda Barra")
        let data = BarChartData(dataSets: [dataSet])
        chartBarraHorizontal.data = data
        chartBarraHorizontal.notifyDataSetChanged()
    }
    
    func generaGraficoLinea () {
        let dato1 = BarChartDataEntry(x: 1.0, y: Double(7))
        let dato2 = BarChartDataEntry(x: 2.0, y: Double(6))
        let dato3 = BarChartDataEntry(x: 3.0, y: Double(3))
        let dataSet = LineChartDataSet(entries: [dato1, dato2, dato3], label: "Leyenda Linea")
        let data = LineChartData(dataSets: [dataSet])
        chartLinea.data = data
        chartLinea.notifyDataSetChanged()
    }
}

