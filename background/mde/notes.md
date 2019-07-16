MDE
---

- modeling is key to computing (49.)

- modeling: abstraction of a subject one wants to reason about
- models = simplification: limit the scope of a subject to the relevant parts, given a certain purpose
- models: simpler, safer, and cheaper means to reason (35.)
- model: "A model is a representation of something, constructed, and used for a particular purpose" (36.)

- different formalism
    - entity-relationship models (37.), used in relational database to describe data model
    - ontologies: describe things in the subject-predicate-object manner
        - RDF (38.) 
        - OWL (39.)

# Global description 
- MDE (40.)
- MDE -> generalization of the Model Driven Architecture (1.)
- MDE -> use models for all SE activities (design, software evolution, test)
- Goal: reduce accidental complexity in the development of complex software (17., 18.)
    - separation of concerns: use of multiple DSLs that provide appropriate abstractions, notations, tools -> help stakeholders focusing on their problem wuthout loosing the big picture
    - reduce gap between high and low level models by generating artifacts for the low level (components, documentation, test cases, ...) from the high level one
- models use specific views, generate platform dependent artifacts/code
- MDE improve productivity and maintainability (2., 22., 23., 24.)
- MDE esases evolution and maintenance of softaware (20.) and foster the integration of different technologies spaces (21.)
- Reduce space between problem space and slution space
- three fundamentals conceots: metamodels, models, and model transformation
    - metamodels: represent how a model is structured and the possible interactions between its element
    - models: conforms to a metamodel and represent a particular instance of it
    - model transofrmation: operational part of MDE that refine modes and generate code

- MDE more and more used (4., 2.)

- models use to perform validation and verification of the system (simulation, model checking, etc)

- adress domain complexity of software
- focus on the specification of formal models
- provide abstractions of the problem space that express designs in terms of application domains rather than abstractions of the solution space (???)
- mde addresses platform complexity and express domain concepts by combining (18.):
    - domain specific modelling languages (DSMLs): language specific to a domain (type system, semantics, consepts are linked to this domain), nothing extra. Opposed to general purpose language such as Java
    - transformation engines and generators:

- pros (18., 1., 22.):
    - abstraction from specific techno., which improves portability and interoperability
    - automated code generation and transformation, that increase productivity and efficiency
    - model checking and verification that improvequality
    - separation of application and infrastructure code, reusability, readability, and cost-effectiveness
- cons (1., 22., 42., 23.):
    - high initial effort for defining DSMLs
    - scalability
    - poor tool support
    - organisational challenges 

1.  
- 1 system, multi models -> different perspective of the system
- models are artefacts that should be maintenaied in the same time as code
    - happen if cost of maintenaiing this is less than the benefit get from that 
- models: valuable tools for absteaction, summarising, and providing alternatives perspectives
- models are valuable if they can be simulated, transofrmed, checked, ...
- tooling is very important
    - to check/verify models (type/static semantics checking)
    - to work with instances of models (generation, checking conformity, etc)
    - to support mapping between models (code generation, transofrmation)
    - model driven testing
    - dashboard applications
    - tools for version control
    - tools for managing the software process
- "A model driven engineering approach must specify the modelling languages,models, translations between models and languages, and the process used tocoordinate the construction and evolution of the models"

2. 
- introducing MDE implies a lot of organizational changes and change management
- "that is, the systematic use of models as primary artifacts during a software engineering process"
- MDE claims many potential benefits – chiefly, gains in productivity, portability, maintainability and interoperability it has been developed largely without the support of empirical data to test or support these claims
- negative impact of abstraction on developers
    - hard to do
    - prefer concrete instantiations (examplars, simulations)
- MDE 2 edge sword
    - e.g., code generation can help productivity, but could worsen it when the generated code needs to be modified  -> unknow, no data

4. 
- MDE -> models as primary artefacts in SE
- models should be precise enough to support automated transformations between the different phase of dev'
- MDE is widespread, at different stage of SE, maybe not all of them
- MDE improves productivity  but training costs and organizational changes
- MDE not only help in code generation but mainly in documentation
- MDE helps to do faster and cheaper, so some companies that do not focus on software dev' can focus on their core expertise
- MDE suitable for architect
- modeling helps to understand, communicate about, and analyse software

17. 
- MDE: creation of abstract models of software, then "transformed" to concrete implementations
- reduce gap between problem and software implementation (solution)
- problem-level abstractions
- abstract the complexifty of underlying implementation platform, focus on the business part
- 2 broad class of models
    - development models: abstraction above code level (e.g., requirements, architectural, implementation, and deployment)
    - runtime models: abstraction of a runtime phenomena   , views of some aspect of an executing system (models@run.time)

18. 
- in computer science: abstractions use to help developers programing in their design intent rather than the underlying complexity of their environment
- abstractions used to be in the solution space
- MDE
    - DSML: formalise application structure, behaviour, and requirements within a particular domain. Described through metamoels, that define the concepts and how they are linked, and the semantics and constraints associated to the concepts
    - Transformation engine: analyzes models (instance of a metamodel) and create/generate software artifact (code, simulation inputs, deployment descriptors, or other model descriptions)

20. 
- abstraction: techniques used since the beginning
- improve productivity

# Models, Metamodels, Model transformation

**Models**
    - (partial) representation of a system/domain that captures some of its characteristics into an abstraction that can be easily understood and manipulated by designers
    - Models are defined using a formal or semi-formal langiage such as UML
    - [MDE] drive software engineering activities
    - way to excange information

    - "A modelis a simplification of a system built with an intended goal inmind" (28.)

**Metamodels**
    - defines the set of concepts, relationships, and semantics tules regulating how models can be denoted in a particular language definition
        - materialize the knowledge of a given domain (concepts, their relations)
    - a model conforms to a metamodel <=> a model is an instance f the metamodel <=> satisfies all rules of the metamodel
        - each object in the model is an instance of a meta-class & statisfies all semantics rules (29.)
    - metamodel can be seen as a special model (model of a model)
    - metamodel = abstract syntax of a language (26.)
    - models / metamodels are organized in multiple levels (metamodeling stack) related by the conformance relationship
        - MDE: 3 levels, with a reflexive one top (model conform to itself)
    - MetaObject Facicilty (MOF) (6.) is the standard metamodeling architecture proposedby the OMG, nuilt around a set of modeling standard
        - OCL (7.): constraints language
        - XML Metadata Interchange (XMI) (8.): data format to store MOF-based models
    - metamodel = model of a model
    - MOF = DSML to define meta-models

    - metamodel can be defined using different formalism
        - entity-relationship diagram (eg., AToM3 (27.))
        - OO meta-language (eg., MOF) -> choosen formalism in MDE (28.)

    - OO metamodel
        - contains metaclass with properties (attributes or references), inheritence --> basically a class diagram

    - 4 layers of modeling by MOF
        - M3: represents te language used by MOF to define M2 models, define itself
        - M2: UML metamodel 
        - M3: user model expressed in UML
        - M0: runtime layer (instances)

    - "A  meta-model  is  the  explicit  specification  of  an  ab-straction (a simplification)" (28.)


**Model transformation**
    - "heart and soul of MDE" (30.)
    - modeling operation that produce models from input models based to transformation specification
    - defined at the metamodel level, executed at the model one
    - standard: Query/View/Transformation (QVT) (9.)
    - Language:
        - GPL like Java
        - DSL like ATL
    - allow recurrent modeling activities
        - refactoring (31.)
        - slicing (32.)
        - code genertion and more (33., 34.)
    - 3 categories
        - exogenous transformations: input metamodel differ from the output one
        - endogenous transofrmations: input metamodel is the same as the output metamodel
        - in-place transofrmations: special case of endogemous, input model = output model (modification of the model)
    

# MDE Standard and Technologies

**UML/OCL**
    - UML (10.): standard language for OO modeling
        - Unification of different modeling techno (11.): Booch, OMT(12.), OOSSE(13.)
        - defines 14 diagrams
        - 2 categories: static views representing the structrure, dynamical views representing the behaviour
    - UML class diagram widely used

    - OCL: textual language to describe invariants, operations contracts, derivations rules,query expressions over models/metamodels
    - declarative language, side effect free
    - extend UML diagrams and any MOF model
    - used to express constraint and semantics that cannot be done with UML 
    - each expressions in written in the context of an instance of a specific type, accessible through the self keyword
    - OCL reference to express static semantics rules

**Modeling Frameworks**
    - def: development platforms that offer technical solutions to create, manipulate, and persist (meta) models
    - provide low level programming interface to interact with models
    - graphical tools to ease (meta) model definition, constraint specification, or model element creations
    - embeds code generator to create a set of softare artifacts from models

    - EMF (14.) de-facto standard baseline framework to build DSL and modeling tools within the Eclipse ecosystem
        - attested by the increasing number of EMF-based tools on the market place
    - embeds own metamodeling language ECore
        - subset of UML
        - reference implementation of E-MOF, subset of MOF that correspond to facilities found in OO languages
    - Ecore model = model of the classes of a software application, used to generate Java code that allows manipulatingconceptual elements  at the application level
    - different way to define models
        - annotated Java, UML, XML, graphical/textual modelling tools

    - 3 building blocks:
        - EMF.Core: ECore + runtime support for models (change notifications, persistent support with XMI) + reflective application programing interface (API) to manipulate EMF objects
        - EMF.Edit: reusable classes to build editor for EMF models
        - EMF.Codgen: code generation facility provides support to build a complete editor for EMF models. Contains a UI to specify generation operations and which generators should be invoked
            - 3 levels of code generation: model (Java interfaces and implementation classes for the model classes, factory, and package implementation class), adapters (implementation classes that adapt the model classes for editing and displaying), and editors (basic generated editor that can be customized)
    
    -EMF: suffers from limitations when used for m@r.t, mainly developped for design time modelling

    - Altrnatives implementations of the MOF stack:
        - Epsilon (15.): multi-language integration
        - KMF (now GreyCat) (16.): mative model support (??), developped to meet m@r.t requirements

    - KMF (16., 48.)
        - requirement when KMF has been designed (for generated runtime model):
            - low memory footprint
            - small dependencies size
            - thread safety
            - efficient model (un)marshalling and cloning
            - connecting m@r.t to classical design tools 

    - EMF:
        - Specification of an application's data (object attributes, relationships between objects, operation available on each object, simple constraint)
            - subset of class diagram of UML

# Models@run.time
    - MDE paradigm (44., 45.)
    - uses models both at design and runtime to support self-adaptive systems
    - model-based abstraction causally connected to their own current state
    - model reflects the current state of the system
    - adaptation can be made at the model level thanks to the causally connection
    - model of the problem space, not the solution space

    - design time: models support the design and implementation of the system
    - the same (or similar) models are then embedded at runtime in order to support reasoning process
    - models use as context model, and used in reasoning activities

    - often mentioned in the context of architectural and variability models (44., 46., 47.)

# Bibliography

1. S. Kent. Model Driven Engineering. In Proceedings of the 3rd IFM Conference, pages 286–298. Springer, 2002.
2. J. Hutchinson, J. Whittle, and M. Rouncefield. Model-Driven Engineering Practices in Industry: Social, Organizational and Managerial Factors that Lead to Success or Failure. Science of Computer Programming
4. J. Whittle, J. Hutchinson, and M. Rouncefield. The State of Practice in Model-Driven Engineering.
6. OMG. Meta Object Facility (MOF) Specifications, 2017. URL: http://www. omg.org/spec/MOF/2.4.1/
7. OMG. OCL Specification, 2017. URL: www.omg.org/spec/OCL
8. OMG. OMG MOF 2 XMI Mapping Specification version 2.5.1, 2017
9. OMG. QVT Specification, 2017. URL: http://www.omg.org/spec/QVT
10. OMG. UML Specification, 2017. URL: www.omg.org/spec/UML
11. J. Rumbaugh, I. Jacobson, and G. Booch. The Unified Modeling Language Reference Manual. Pearson Higher Education, 2004
12. J.Rumbaugh. OMT:The Object Model. Journal of Object-Oriented Programming, pages 21–27, 1995
13. I. Jacobson. Object-Oriented Software Engineering: a Use Case Driven Approach. Pearson Education India, 1993
14. D. Steinberg, F. Budinsky, E. Merks, and M. Paternostro. EMF: Eclipse Modeling Framework. Pearson Education, 2008
15. D. S. Kolovos, R. F. Paige, and F. A. Polack. Eclipse Development Tools for Epsilon.
16. F. Fouquet, G. Nain, B. Morin, E. Daubert, O. Barais, N. Plouzeau, and J.- M. Jézéquel. An Eclipse Modelling Framework Alternative to Meet the Models@Runtime Requirements. In Proceedings of the 15th MoDELS Conference, pages 87–101
17. Robert France and Bernhard Rumpe. “Model-driven development of complex software: A research roadmap”. In: 2007 Future of Software Engineering
18. Douglas C Schmidt. “Model-driven Engineering”. In: IEEE Computer 39.2
20. Colin Atkinson and Thomas Kühne. “Model-driven development: a metamodeling foundation”. In: Software, IEEE 20.5 (2003),
21. Jean-Marie Favre. “Towards a basic theory to model model driven engineering”. In: 3rd Workshop in Software Model Engineering, WiSME.
22. Paul Baker, Shiou Loh, and Frank Weil. “Model-Driven engineering in a large industrial context—motorola case study”. In: International Con- ference on Model Driven Engineering Languages and Systems. Springer.
23. John Hutchinson, Mark Rouncefield, and Jon Whittle. “Model-driven engineering practices in industry”. In: Software Engineering (ICSE), 2011 33rd International Conference on.
24. John Hutchinson, Jon Whittle, Mark Rouncefield, and Steinar Kristof- fersen. “Empirical assessment of MDE in industry”. In: Proceedings of the 33rd International Conference on Software Engineering (ICSE’11)
26. Tony Clark, Paul Sammut, and James Willans. Applied metamodelling: a foundation for language driven development. Ceteva
27. Juan De Lara and Hans Vangheluwe. “AToM3: A Tool for Multi- formalism and Meta-modelling”. In: International Conference on Fun- damental Approaches to Software Engineering. Springer
28. Jean Bézivin and Olivier Gerbé. “Towards a Precise Definition of the OMG/MDA Framework”. In: Proceedings of the 16th International Conference on Automated Software Engineering (ASE’01)
29. Jean Bézivin, Frédéric. Jouault, and David Touzet. “Principles, Standards and Tools for Model Engineering”. In: Proceedings of the 10th International Conference on Engineering of Complex Computer Systems
30. Shane Sendall and Wojtek Kozaczynski. “Model transformation the heart and soul of model-driven software development”. In: IEEE Software
31. Jing Zhang, Yuehua Lin, and Jeff Gray. “Generic and domain-specific model refactoring using a model transformation engine”. In: Model- driven Software Development. Springer
32. Arnaud Blouin, Benoit Combemale, Benoit Baudry, and Olivier Beau- doux. “Kompren: Modeling and Generating Model Slicers”. In: Software and Systems Modeling (SoSyM)
33. Krzysztof Czarnecki and Simon Helsen. “Classification of model transformation approaches”. In: Proceedings of the 2nd OOPSLA Workshop on Generative Techniques in the Context of the Model Driven Architecture.
34. Tom Mens and Pieter Van Gorp. “A taxonomy of model transformation”. In: Electronic Notes in Theoretical Computer Science 152 (2006),
35. J. Rothenberg. Artificial intelligence, simulation &amp; modeling. chapter The Nature of Modeling, pages 75–92. John Wiley & Sons, Inc., New York, NY, USA,
36. David Benyon. Information and Data Modelling. McGraw-Hill Higher Education, 2nd edition, 1996
37. Peter Pin shan Chen. The entity-relationship model: Toward a unified view of data. ACM Trans. Database Syst.
38. Ora Lassila and Ralph R. Swick. Resource Description Framework (RDF) Model and Syntax Specification. W3c recommendation, W3C,
39. World Wide Web Consortium W3C. Owl 2 web ontology language. structural specification and functional-style syntax, 2009
40. Marco Brambilla, Jordi Cabot, and Manuel Wimmer. Model-Driven Software Engi- neering in Practice. Morgan & Claypool Publishers, 1st edition, 2012.
42. Jon Whittle, John Hutchinson, Mark Rouncefield, H ̊akan Burden, and Rogardt Heldal. Industrial adoption of model-driven engineering: Are the tools. In Ana Moreira, Bernhard Sch ̈atz, Je↵ Gray, Antonio Vallecillo, and Peter J. Clarke, editors, MoDELS, volume 8107 of Lecture Notes in Computer Science, pages 1–17. Springer, 2013.
44. Brice Morin, Olivier Barais, Jean-Marc Jezequel, Franck Fleurey, and Arnor Solberg. Models@ run.time to support dynamic adaptation. Computer, 42(10):44–51, October 2009.
45. G. Blair, N. Bencomo, and R. B. France. Models@ run.time. Computer, 42(10):22–27, Oct 2009
46. J. C. Georgas, A. v. d. Hoek, and R. N. Taylor. Using architectural models to manage and visualize runtime adaptation. Computer,
47. C. Cetina, P. Giner, J. Fons, and V. Pelechano. Autonomic computing through reuse of variability models at runtime: The case of smart homes. Computer
48. Fouquet Francois, Gregory Nain, Brice Morin, Erwan Daubert, Olivier Barais, Noel Plouzeau, and Jean-Marc Jezequel. Kevoree modeling framework (kmf): Efficient modeling techniques for runtime use
49. J.Kramer,Is abstraction the key to computing?
50. A. Kleppe, S. Warmer, W. Bast, "MDA Explained. The Model Driven Architecture: Practice and Promise", Addison-Wesley, April 2003