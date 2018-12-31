other
selectSubProcessToRender: subProcName

	subProcess := (self getModelOrSubProcess getSubProcessNamed: subProcName ifAbsent: [nil])