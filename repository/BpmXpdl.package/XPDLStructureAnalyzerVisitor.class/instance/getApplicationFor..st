other
getApplicationFor: aXPDLObject
	"The receiver answer <anApplication> associated with the element <aXPDLObject>"

	^packageApplication at: aXPDLObject package ifAbsent: [ProcessAppMappingException signal: 'No Application found for XPDL package [', aXPDLObject package getName, ']']