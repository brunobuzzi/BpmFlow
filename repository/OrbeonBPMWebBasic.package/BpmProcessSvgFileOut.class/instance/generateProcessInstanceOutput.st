file out
generateProcessInstanceOutput
	| stream converter |

	stream := PrintStream on: String new.
	converter := BizagiSvgConverter convert: (fileOutObject generateProcessMapFor: user) prettyPrinted.

	stream nextPutAll: self xmlHeader, String lf.
	stream nextPutAll: (converter generateSVGFor: user assignment: fileOutObject).

	self downloadSvg: stream