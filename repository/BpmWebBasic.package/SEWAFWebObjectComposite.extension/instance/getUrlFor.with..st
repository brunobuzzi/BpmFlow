*bpmwebbasic
getUrlFor: aBpmArtifactInstance with: anUUID
	"Generate an url link to Java Orbeon application with context execution parameters (that are stored as hidden in the Java Orbeon Form) so the Java Application can return back to this web page with an updated domain model"
	| formDefinition |

	formDefinition := aBpmArtifactInstance getDefinitionName. "name of the form to link"
	^aBpmArtifactInstance hasForm "is a new or an edited form ?"
		ifFalse: [(aBpmArtifactInstance isGrantedUser: self session user) "has permissions ?"
					ifTrue: [self buildNewUrlFor: aBpmArtifactInstance with: anUUID]] "Orbeon NEW link"
		ifTrue: [(aBpmArtifactInstance isDone 
						or:[(aBpmArtifactInstance isGrantedUser: self session user) not 
						or: [(aBpmArtifactInstance innerTaskHasBeenFinalizedBy: self session user) and: [self modeIsFinishedTasks]]])
			ifFalse: [self buildEditUrlFor: aBpmArtifactInstance with: anUUID] "Orbeon EDIT link"
			ifTrue: [self buildViewUrlFor: aBpmArtifactInstance with: anUUID]] "Orbeon VIEW link"