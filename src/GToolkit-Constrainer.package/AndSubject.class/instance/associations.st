public
associations
	associations isNil
		ifTrue: [ associations := children
					fold:
						[ :aSubject :bSubject | 
						aSubject associations intersectionByValue: 
						bSubject associations ].
				].
	^ associations