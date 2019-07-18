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
- MDE improves productivity but training costs and organizational changes
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


1. S. Kent. Model Driven Engineering. In Proceedings of the 3rd IFM Conference, pages 286–298. Springer, 2002.
2. J. Hutchinson, J. Whittle, and M. Rouncefield. Model-Driven Engineering Practices in Industry: Social, Organizational and Managerial Factors that Lead to Success or Failure. Science of Computer Programming
4. J. Whittle, J. Hutchinson, and M. Rouncefield. The State of Practice in Model-Driven Engineering.
17. Robert France and Bernhard Rumpe. “Model-driven development of complex software: A research roadmap”. In: 2007 Future of Software Engineering
18. Douglas C Schmidt. “Model-driven Engineering”. In: IEEE Computer 39.2
20. Colin Atkinson and Thomas Kühne. “Model-driven development: a metamodeling foundation”. In: Software, IEEE 20.5 (2003),