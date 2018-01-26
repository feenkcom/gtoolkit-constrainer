visiting
checkAgainst: aConstraint
	| resultList result|
	resultList := OrderedCollection new.
	children
		do: [ :aSubject | 
			| temporaryResult |
			temporaryResult := aSubject checkAgainst: aConstraint.	
			resultList add: temporaryResult ].
	result := self andResultList: resultList.
	resultList do: [ :each | result addChildResult: each ].
	result constraint: aConstraint.
	result subject: self.
	^ result