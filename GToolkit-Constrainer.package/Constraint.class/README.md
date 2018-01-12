Represents a constraint checker on an Object or an array of objects

Constraint new
    no: #outgoingInvocations
    of:  ((MooseModel root allModels anyOne) allModelMethods)
    should: [ :meth :inv | (meth name = inv from name) ];
	 ruleViolations
	
Constraint new
	all: #methods
	of: ((MooseModel root allModels anyOne) allModelClasses)
	must: [ :cls :meth | (meth name size > 3  ) ];
	ruleViolations