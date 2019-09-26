query variables
isTasksHeatmapDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Tasks Instances Heatmap' translateIn: self session)