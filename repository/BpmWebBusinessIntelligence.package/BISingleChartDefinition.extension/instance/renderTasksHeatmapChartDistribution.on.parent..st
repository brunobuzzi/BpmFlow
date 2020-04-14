*bpmWebBusinessIntelligence
renderTasksHeatmapChartDistribution: anAppDistributionReport on: html parent: aWebComponent

	html render: ((WAHeatMapBpmnCanvasComposite parent: aWebComponent) model: self scope processes last)