other
getGemsPidAndPort
	"The receiver answer <aDictionary> where the key is the port number and the key is the PID of the Gem process"
	| znServer pidAndPort |

	pidAndPort := Dictionary new.
	znServer := GemServerRegistry singleton servers detect: [:each | each isKindOf: ZnAbstractGemServer].
	znServer portOrResourceNameList do: [:port | | pidFilePath |
		pidFilePath := znServer gemPidFileName: port.
		(GsFile openReadOnServer: pidFilePath) ifNotNil: [:file | 
			pidAndPort at: port put: file contents asNumber.
			file close.
		].
	].

	^pidAndPort