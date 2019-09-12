*bpmBizagiSvgConverter
asSVGfor: aBpmUser
	| stream |

	stream := WriteStream on: String new.

	self getProcessesTreeAsCollection do: [:eachProcess | 
		stream nextPutAll: ((XpdlSvgConverter convert: eachProcess definition xmlString) generateSVGFor: aBpmUser process: eachProcess).
	].

	^stream contents