clone
clone
	| newChart |

	newChart := super clone.

	newChart scope: (scope chartDefinition: newChart);
		distribution: (distribution clone chartDefinition: newChart);
		distributionType: (distributionType chartDefinition: newChart);
		chartType: (chartType chartDefinition: newChart);
		dateGroupName: dateGroupName;
		yourself.

	^newChart