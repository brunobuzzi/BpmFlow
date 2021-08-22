html redirect
redirectToStaticMessagePageFor: aBpmProcessInstance
	| title text data |

	title := 'New Process Created' .
	text := 'Process Id [', aBpmProcessInstance id printString, '] (', aBpmProcessInstance getApplicationName, ' | ', aBpmProcessInstance getDefinitionName, ')'.
	data := 'You will receive a mail for each process news'.

	^self generateHtmlForRedirectTo: self systemRoot gemstoneIP, '/processMessage?title=', title, '&text=', text, '&data=', data.