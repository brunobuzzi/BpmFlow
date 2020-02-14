other
testBadPasswordsValues

	#('admin' '123' '123123' '12345' '1234567' '123456' '12345678' '123456789' 'password' 'qwerty' '000000' '111111' '654321' '666666' 'passw0rd')
		do: [:badPassword | 
				BpmUser cache do: [:eachUser | self deny: (eachUser password = badPassword sha256Sum)] 
		].