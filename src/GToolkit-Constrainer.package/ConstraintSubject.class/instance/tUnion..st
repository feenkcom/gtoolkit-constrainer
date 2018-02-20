transformation
tUnion: aCollection
	|unionSubject otherSubject |
	unionSubject := UnionSubject new.
	otherSubject := ConstraintSubject new the: aCollection.
	unionSubject merge: self with: otherSubject.
	^ unionSubject.
	
