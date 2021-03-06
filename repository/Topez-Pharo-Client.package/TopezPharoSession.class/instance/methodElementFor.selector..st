api
methodElementFor: behaviorProxy selector: selector
    | theClass theBehavior |
    theBehavior := behaviorProxy asTopezProxy native.
    theClass := theBehavior theNonMetaClass.
    ^ TZMethodElement new
        elementClass: theClass asTopezProxy;
        isMeta: theBehavior isMeta;
        elementClassName: theClass name;
        selector: selector;
        category: (theBehavior organization categoryOfElement: selector asSymbol);
        setSource;
        yourself