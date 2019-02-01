other
renderBpmTaskAssignment: aBpmTaskAssignment on: html 

	"self renderTakeTaskIconOn: html for: eachProcess."

		html div class: 'monitor-list-item-summary'; with: [
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Top Application:' translateIn: self session)].
				html output: aBpmTaskAssignment applicationName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Process Id:' translateIn: self session)].
				html output: aBpmTaskAssignment processId.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Process Name:' translateIn: self session)].
				html output: aBpmTaskAssignment processName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Creation Date:' translateIn: self session)].
				html output: aBpmTaskAssignment creationDate.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Task Name:' translateIn: self session)].
				html output: aBpmTaskAssignment taskName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Role:' translateIn: self session)].
				html output: aBpmTaskAssignment getRoleName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Parent Process:' translateIn: self session)].
				html output: aBpmTaskAssignment printParentName.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('And Context:' translateIn: self session)].
				html output: aBpmTaskAssignment printAndContext.].
			html div class: 'monitor-list-item-data'; with: [
				html strong with: [html span: ('Or Context:' translateIn: self session)].
				html output: aBpmTaskAssignment printOrContext.].
			self renderTakeTaskIconOn: html for: aBpmTaskAssignment.
		].