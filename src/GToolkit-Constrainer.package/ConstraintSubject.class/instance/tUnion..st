transformation
tUnion: aCollection
	|unionSubject otherSubject |
	unionSubject := UnionSubject new.
	otherSubject := ConstraintSubject new the: aCollection.
	unionSubject addChild: self.
	unionSubject merge: self with: otherSubject.
	self addParent: unionSubject.
	otherSubject addParent: unionSubject.
	^ unionSubject.
	
