other
renderLateralItemDetailsOn: html for: aLateralItem
	| boldData |

	boldData := (aLateralItem printTransmitter translateIn: self session).

	aLateralItem isUserMessage ifTrue: [
		boldData := boldData, ' (', aLateralItem from username, ')'.].

	html strong with: [html output: boldData].

	html output with: [html output: aLateralItem createdTime].