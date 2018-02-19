transformation
tIntersect: aCollection
	|intersectSubject otherSubject |
	intersectSubject := IntersectSubject new.
	otherSubject := ConstraintSubject new the: aCollection.
	intersectSubject addChild: self.
	intersectSubject merge: self with: otherSubject.
	self addParent: intersectSubject.
	otherSubject addParent: intersectSubject.
	^ intersectSubject.