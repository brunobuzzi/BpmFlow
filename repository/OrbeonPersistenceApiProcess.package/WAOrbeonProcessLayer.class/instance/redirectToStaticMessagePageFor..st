html redirect
redirectToStaticMessagePageFor: aBpmProcessInstance
	| title text data |

	title := 'New Process Created' .
	text := 'Process Id [', aBpmProcessInstance id printString, '] (', aBpmProcessInstance getApplicationName, ' | ', aBpmProcessInstance getDefinitionName, ')'.
	data := 'You wll receive a mail each per each process news'.

	^self generateHtmlForRedirectTo: self getGemStoneServerConfiguration gemstoneIP, '/processMessage?title=', title, '&text=', text, '&data=', data.