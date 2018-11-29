warnings
getSubProcessNodesWithoutProcessDefinition
	"Answer a collection of <XPDLSubProcessActivity> where it's Process Definition is NOT defined in <allProcesses>.
	This will cause an error because some subprocesses are NOT defined"
	| allPackagesNames report |

	report := OrderedCollection new.
	allPackagesNames := xpdlPackages collect: [:each | each getName].

	xpdlPackages do: [:eachPack | 
		(eachPack getAllSubProcessNodes reject: [:eachAct | allPackagesNames includes: eachAct getName]) do: [:eachAct | | reportItem |
			reportItem := XPDLItemImportReport new 
				code: 300;
				type: 'Error';
				title: 'Sub Process Activity without Process Definition';
				description: 'Sub Process Activity [', eachAct getName, '] in Process  [', eachPack getName, '] has NO Process Definition';
				solution: 'Define in Bizagi a SubProcess with the same Sheet name as the SubProcess node (in the parent Process definition)';
				yourself.
			report add: reportItem.
			]
	].
	^report