instance creation
processClassesBlock: classesBlock classElementFactory: classElementFactory
    ^ self
        processClassesBlock: classesBlock
        elementBlock: [ :cl :indents | 
            classElementFactory newClassElement
                elementClass: cl;
                elementClassName: cl name;
                elementSuperClassName: cl superclass name;
                indent: (indents at: cl);
                yourself ]