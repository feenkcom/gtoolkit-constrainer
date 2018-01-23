public
and: aSubject with: anotherSubject
	"associations := (aSubject ruleAssociations asDictionary intersectionByValue: anotherSubject ruleAssociations asDictionary) associations."
	self addToAndSubjects: aSubject.
	self addToAndSubjects: anotherSubject
	