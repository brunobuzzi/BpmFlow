render subprocess
selectSubProcessToRender: subProcName

	subProcess := (self getModelOrSubProcess getSubProcessNamed: subProcName ifAbsent: [nil]).

	mainPanel selectedSubProcess: subProcess