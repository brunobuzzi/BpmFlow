query variables
isTasksHeatmapDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Tasks Heatmap' translateIn: self session)