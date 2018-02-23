svg
showSVGfor: processDefinition

	^(BpmProcessSvgFileOut newFor: self object: processDefinition user: self session user) generateOutput