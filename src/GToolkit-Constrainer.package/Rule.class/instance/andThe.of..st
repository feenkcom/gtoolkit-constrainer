api
andThe: selector of: aCollection
	|andSubject secondSubject|
	secondSubject := SimpleSubject new the: selector of: aCollection.
	andSubject := AndSubject new.
	andSubject and: leftSubject with: secondSubject.
	leftSubject := andSubject.
	^self