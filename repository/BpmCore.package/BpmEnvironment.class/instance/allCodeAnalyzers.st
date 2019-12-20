embedded code security
allCodeAnalyzers

	^Array 
		with: BpmLoopConditionCodeAnalyzer 
		with: BpmQueryBlockCodeAnalyzer 
		with: BpmTaskScriptCodeAnalyzer 
		with: BpmIntermediateEventTimerCodeAnalyzer 
		with: BpmStartEventTimerCodeAnalyzer
		with: BpmTransitionConditionCodeAnalyzer