api
classesInMetacelloProject: projectProxy
    | classes extensionClasses ar |
    ar := self rawClassesInMetacelloProject: projectProxy asTopezNative.
    classes := ar at: 1.
    extensionClasses := ar at: 2.
    ^ TZClassElement hierarchyForClasses: classes extensionClasses: extensionClasses classElementFactory: self