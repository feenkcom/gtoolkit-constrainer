private
merge: aSubject with: anotherSubject
	the := aSubject elements.
	otherCollection := anotherSubject elements.
	elements := the union: otherCollection.
	^ self