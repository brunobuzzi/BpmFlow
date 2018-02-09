file out
generateProcessDefinitionOutput
	| stream converter |

	stream := PrintStream on: String new.
	converter := BizagiSvgConverter convert: fileOutObject xmlString.

	stream nextPutAll: self xmlHeader, String lf.
	stream nextPutAll: (converter generateSVGFor: fileOutObject).

	self downloadSvg: stream