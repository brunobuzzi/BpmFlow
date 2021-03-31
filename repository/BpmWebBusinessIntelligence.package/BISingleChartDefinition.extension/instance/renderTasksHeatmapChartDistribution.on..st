*bpmWebBusinessIntelligence
renderTasksHeatmapChartDistribution: anAppDistributionReport on: html

	html render: (WAHeatMapBpmnCanvasComposite new model: self scopeProcessesLast)