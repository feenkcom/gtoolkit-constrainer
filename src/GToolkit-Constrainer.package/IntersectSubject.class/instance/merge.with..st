private
merge: aSubject with: anotherSubject
	the := aSubject elements.
	otherCollection := anotherSubject elements.
	elements := the intersection: otherCollection.
	^ self