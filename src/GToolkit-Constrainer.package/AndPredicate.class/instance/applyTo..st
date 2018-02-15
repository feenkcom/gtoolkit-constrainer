api
applyTo: aSubject
	|result resultList|
	resultList := OrderedCollection new.
	constraints collect: [ :each | resultList add: (each applyTo: aSubject) ].	
	result := self andResultList: resultList.
	resultList do: [ :each | result addChildResult: each ].
	result constraint: self.
	result subject: aSubject.
	^ result