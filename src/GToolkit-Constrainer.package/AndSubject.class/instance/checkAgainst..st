visiting
checkAgainst: aConstraint
	| resultList |
	resultList := OrderedCollection new.
	children
		do: [ :aSubject | 
			| temporaryResult |
			temporaryResult := aSubject checkAgainst: aConstraint.
			resultList add: temporaryResult ].
	^ self andResultList: resultList