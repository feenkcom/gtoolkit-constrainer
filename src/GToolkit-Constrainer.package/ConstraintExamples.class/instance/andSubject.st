public
andSubject
	<gtExample>
	| subjectOne subjectTwo andSubject |
	subjectOne := self aRuleSubject.
	subjectTwo := self secondRuleSubject.
	andSubject := AndSubject new.
	andSubject and: subjectOne  with: subjectTwo.
	^ andSubject 