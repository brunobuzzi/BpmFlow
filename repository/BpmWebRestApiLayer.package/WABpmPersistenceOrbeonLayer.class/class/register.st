other
register
	| application |

	WAAdmin unregister: 'orbeon-gemstone-api'.

	application := WAAdmin register: self at: 'orbeon-gemstone-api'.