Self-adaptive systems
---

- self-adaptive systems (SAS) have been introduced to tackle a "looming software complexity crisis" [36] [39]
    - complexity of installing, configuring, tuning, maintaining system running in uncertain and complex environment
- first defined as self-management systems [39]
    - a system that can adapt automatically to achieve its goal based on high-level objectives

# Basic principles

- **Def:** a system that “is able to adjust its behaviour in response to their perception of the environment and the system itself” [17]
- the self prefix indicates that the system decides autonomously (i.e. without or with minimal interference) how to adapt or organise to accommodate changes in its context and environment” [10]
- a system that evolves in an uncertain environment [27]

- 2 mechanisms [30]
    - traditional mechanisms (exceptions, fault-toleratn protocols)
    - closed ffedback control loop: monitor and adapte systems to achieve goals

- "discipline plit" [2] of SAS
    - part of the system that deals with the domain concern, related to the goal of the system
    - part of the system that deals with the adaptation concern, related to how the system realises the goals under changing conditions

- 2 principles [0]: 
    - external principle: self-adaptive system can handle changes and uncertainties in its environment, the system itself, and its goals autonomously (i.e., with minimal human interference)
    - internal principle: SAS comprises two parts:
        - one, responsible for the domain concern (concern for which the system is built), that interacts with the environment
        - one, responsible of the adaptation concern, that interacts with the first one

- Other way to realize adaptation [0]:
    - self-organising: component apply local rules to adapt their interactions and cooperatively realise adaption
        - often have emergen behaviour [23]
    - context-awareness: emphasis put on handling relevant elements in the environment as a first-class citizen in system design and management
        - a context manager will monitor and manage context changes

- SAS principles can be employed in any software layer (low level, middleware, ...)

- optimal adaptation should be performed without interfering with the SAS activity [40]

# Conceptual model of SAS [0]

- the conceptual model do not discuss how the managing and managed system, or their components, are distributed
- the model does not describe how decisions are taken and coordinated amond different (distributed) component

- 4 elements: environment, managed system, adapttion goals, managing system

- environment:
    - part of the external world with which the SAS interacts and in which the effects of the system will be observed and evaluated [38]
    - can contain both virtual or physical entities
    - difference between the SAS and the environment: the SAS can be controlled by the developer whereas he cannot control the environment
- managed system:
    - the system that reaslises the domain functionality (domain concern)
    - it evolves in en environment
    - should contain sensors and actuators to be monitored and adapted
    - different names in the litterarture:
        - managed element [39]
        - system layer [30]
        - core function [52]
        - base-level subsystem [61]
        - controllable plant [28]
- adaptation goals: 
    - concerns of the managing system over the managed systems
    - related to software qualities of the managed system [59]
    - 4 kinds of goals [39]: configuration, optimisation, healing, protection
    - can evolve over time
    - goals expressed in terms of the uncertainty they have to deal with
        - probabilistic temporal logics [13]
        - fuzzy goals, expressed by fuzzy constraints [5]
- managing system:
    - adapt the managed system according to the adaptation goals
    - monitor the environment and the managed systems
    - different names:
        - autonomic manager [39]
        - architecture layer [30]
        - adaptation engine [52]
        - reflective subsystem [61]
        - controller [28]

# Approaches to engineer SAS

**Automating tasks**
    - focus on the automation of recurrent and error-prone management tasks [39]: installing, configuring, operating, optimising, and maintaining heterogeneous systems 
        - this automation should realises some goals
    - conceptual model split in two parts: autonomic manager (managing system) and managed element (managed system)
    - autonomic manager split in 5 component:
        - Monitor, that continuously monitor the managed element and its environment, it updates the Knowledge
        - Analyse, from the Knowledge, detects if there is a need for adaptation regarding the adaptation goals
        - Plan, that define the set of adaptation actions to realise the goals
        - Execute, that executes the plan

Sum-up:
    - defines the MAPE-K loop (Monitor, Analyse, Plan, Execute over a shared Knowledge)
    - self-adaption requires automating taks
    - 4 different kind of tasks: configurations, optimisation, healing, and protection

**Architecture-based adaptation**
    - focus on how to engineer SAS
    - software architecture can provide a foundation to deal with runtime change in a systematic way
        - "software architecture" -> high-level layered structure of a SAS that separates domain concernes from adapttion concerns
        - "software architecture" -> explicit up-to-date architecture model of the managed system that is used at runtime by a feedback control mechanism to reason about adaptation
    - benefits [41]: generality of concepts, appropriate level of abstraction, potential for scalability, leverage on existing work on languages and notations that providea rigorous basis to support reasoning at runtime, potential for an integrated approach as speciications at the architecture level support configuration, deployment, and reconfiguration
    - [41] propose an architecture based on the sense-plan-act types of architectures
        - Component control: managed system, set of interconnected components that can contain internal mechanism to adjust system behaviour, need to be instrumented with sensors to allow monitoring to allow higher level modification (adding/removing component, modification of their topology, ...)
        - Change management: set of prespecified plans that are executed according to changes of Component Control or with the goal have changed (see Goal management)
        - Goal management: specifications of the managed system under the form of goals, specify chamge to do to the chamge management layer according to the request and the goals, can also trigger modification with goals are modified (added/deleted/modified)
    - FORMS [61]: defines essential primitives of SAS to enable describition and reasoning about architectual characteristics of DSAS
        - SAS is situated in an environment and comprises one or more base-level and reflective subsystems
        - base-level subsystem: managed system, provides system's domain functionnalities
            - domain model: represent any information related to the functionnalities of the system
            - base-level computations: perceives the environment, reasons about it, and act upon a domain model, effects the environment
        - reflective subsystem: manage other subsystems (reflective or base-level)
            - reflection models: contain information related to the adaptation of the other subsystem, usually architectural model
            - reflective computations: reason about and acts upon reflection models, monitor the environment and detetcts if any adaptation is required, does not effect the environment directly


Sum-up:
    - architecture as funcdation to support systematic runtime change and manage the complexity of engineering SAS
    - architecture perspective on SAS provides an appropriate level of abstraction, scalability, and an integrated approach
    - 2 fundamentals architectural concerns os SAS: change management (manage adaptation using plans) and goal management (generate plans based on high-level goals)
    - 3 aspects of SAS: reflective computation, MAPE-K, distributed coordination

**Models@run.time**
    - models@run.time: "causally connected self-representation of the associated system that emphasises the structure, behaviour, or goals of the system from a problem space perspective" [7]
    - stucture the infromation received by the SAS
    - causally connection:
        - modification of the system are reflected in the model
        - modification of the model triggers modification of the system
    - abstraction of the system and its goals
    - 4 dimensions that can be used for classification:
        - structural vs behavioural
        - procedural (how: organisation or execution of the system) vs declarative (what: purpose of the adaptation: goal/requirement modeling)
        - functional (functions of the SAS) vs non-functional (quality properties of the SAS)
        - formal vs non-formal
    - [44] defines models@run.time as a set of configuration points, that can be selected at runtime in response to changes

    - model-oriented architecture
        - 3 layers
            - Online Model Space: platform independent layer, manipulates model
            - Causal Connection: platform-specific, "drivers", link between the 2 layers: model and runtime spaces
            - Business Application: contains application logic, is equipped with sensors that track runtime events, equipped with sensors and "factories services" (actuators)
        - 4 types of runtime models
            - feature model, describes the configuration/variability point
            - context model, specifies relevant variables of the environment
            - reasoning model, associates features with particular context, example: Event-Condition-Action rules
            - architecture model, specifies the component composition of the application
        - 5 elements
            - Event processor (implement the Monitor stage): update the context model with the received information
            - Goal-Based Reasoner (implements the Analyse stage): uses the feature and reasoning model to select the new features that should be executed by the SAS, according to goals
            - Model Weaver (implements part of the Plan stage): from the selected feature, compose a new architecture model
            - Configuration checker (implements part of the Plan stage): check the configuration at runtime
            - Configuration manager (implements part of the Plan stage + the Execute stage): define the right sequence of actions to reach the proposed architecture model, execute them 

Sum-up:
    - causally connection between the the DAS and the model: model represents the up-to date state of the system, modification onthe model will trigger modification on the system
    - models allow to tame the complexity and the huge amount of information
    - with goal first class citizen, models enable anaysis of the behaviour of SAS at runtime, supporting decision making
    - 4 dimensions of runtime models: structural or behavioural, procedural or declarative, functional or non-functional, formal or non-formal
    - SAS can be viewed as a set of possible configuration that should be selected/modified at runtime 

**Goal-driven Adaptation**
    - pioneering approach for the specification of requirements: RELAX [66]
        - language that includes specific constructs for specifying and dealing with uncertainties
            - 3 mechanisms
                - relaxing a goal
                - adding subgoals 
                - adding high-level goal [18]
        - operators that define constraints on how a requirement may be relaxed at runtime
        - related approach: FLAGS [4] based on KAOS [57], goal model
            - difference between boolean goals and fuzzy ones (goals with fuzzy constraints)
    - RELAX, FLAGS: notation to specify goals for DAS

    - requirements as driver of adaptation: "if feedback loops constitue an (architectural) solution for self-adaptation, what is the requirements problem this solution is intended to solve?"  [55] 
        - requirements to be addressed with feedback loops are requirements (concerns of the managing system) about the runtime success/failure/quality of service of other requirements (requirements of the managed system)
        - named awareness requirements
        - 5 types of awareness requirements
            - regular: refer to another requirement that should never fail
            - aggregate: imposes contraints on the success/failure rate of another requirement
            - trend: imposes constraints on the success/failure rate of another requirement over a period of time
            - delta: defines acceptable thresholds for the fulfilment of requirements, like achievement time
            - meta: make statements about other awareness requirements
        - awareness requirements are normal requirements that should appear in the requirement specification, as a first order concept, to allow reasoning about them
        - these requirement can be monitored at runtime [55], that enable analysis of the behaviour
    
    - evolution requirements [56]
    - modelled as condition-action-rules: actions can change other requirements (removing, strengthening, weakening, ...)



Sum-up:
    - two sides: how to specify the requirements of a system that is exposed to uncertainties and what are the requirement of the solution, found by a feedback control loop, is intended to solve?
    - goal specification needs to take into accound uncertainties to which the system is exposed to
    - defining constraints on how requirements may be relaxed at runtime enables handling uncertainties
    - requirements to be addressed by feedback loops (concerns of the managing system) are requirements about the runtime success/failure/quality of service of other requirements (requirement of the managed systems)
**Guarantees Under Uncertainties**
**Control-Based Adaptation**



# Bibliography

0. Weyns, D. (2019). Software Engineering of Self-adaptive Systems. In Handbook of Software Engineering (pp. 399-443). Springer, Cham.
2. Andersson, J., de Lemos, R., Malek, S., Weyns, D.: Reflecting on self-adaptive softwaresystems. In: Software Engineering for Adaptive and Self-Managing Systems, SEAMS ’09.IEEE Computer Society, Washington (2009)
3. Baldauf, M., Dustdar, S., Rosenberg, F.: A survey on context-aware systems. Int. J. Ad HocUbiquit. Comput.2(4), 263–277 (2007)
4. 
10. Brun, Y., Marzo Serugendo, G., Gacek, C., Giese, H., Kienle, H., Litoiu, M., Müller, H.,Pezzè, M., Shaw, M.: Engineering self-adaptive systems through feedback loops. In: SoftwareEngineering for Self-adaptive Systems, pp. 48–70. Springer, Berlin (2009)
17. Cheng, B., de Lemos, R., Giese, H., Inverardi, P., Magee, J., Andersson, J., Becker, B.,Bencomo, N., Brun, Y., Cukic, B., Di Marzo Serugendo, G., Dustdar, S., Finkelstein, A., Gacek,C., Geihs, K., Grassi, V., Karsai, G., Kienle, H., Kramer, J., Litoiu, M., Malek, S., Mirandola,R., Müller, H., Park, S., Shaw, M., Tichy, M., Tivoli, M., Weyns, D., Whittle, J.: SoftwareEngineering for Self-adaptive Systems: A Research Roadmap. Lecture Notes in ComputerScience, vol. 5525. Springer, Berlin (2009)
18. 
23. De Wolf, T., Holvoet, T.: Emergence versus Self-organisation: different concepts but promisingwhen combined. In: Engineering Self-organising Systems: Methodologies and Applications,pp. 1–15. Springer, Berlin (2005)
27. Esfahani, N., Malek, S.: Uncertainty in self-adaptive software systems. In: Software Engineer-ing for Self-adaptive Systems II, pp. 214–238. Springer, Berlin (2013)
28. Filieri, A., Hoffmann, H., Maggio, M.: Automated design of self-adaptive software withcontrol-theoretical formal guarantees. In: International Conference on Software Engineering,ICSE ’14. ACM, New York (2014)
30. Garlan, D., Cheng, S., Huang, A., Schmerl, B., Steenkiste, P.: Rainbow: architecture-based self-adaptation with reusable infrastructure. Computer37(10), 46–54 (2004)
36. IBM Corporation: An Architectural Blueprint for Autonomic Computing. IBM White Paper(2003).http://www-03.ibm.com/autonomic/pdfs/, AC Blueprint White Paper V7.pdf (LastAccessed Jan 2017)
38. Jackson, M.: The meaning of requirements. Ann. Softw. Eng.3, 5–21 (1997)
39. Kephart, J., Chess, D.: The vision of autonomic computing. Computer36(1), 41–50 (2003)
40. Kramer, J., Magee, J.: The evolving philosophers problem: dynamic change management.IEEE Trans. Softw. Eng.16(11), 1293–1306 (1990)
41. 
52. Salehie, M., Tahvildari, L.: Self-adaptive software: landscape and research challenges. Trans.Auton. Adaptive Syst.4, 14:1–14:42 (2009)
55. 
57. 
59. Weyns, D., Ahmad, T.: Claims and Evidence for Architecture-Based Self-adaptation: ASystematic Literature Review, pp. 249–265. Springer, Berlin (2013)
61. Weyns, D., Malek, S., Andersson, J.: FORMS: unifying reference model for formal specifi-cation of distributed self-adaptive systems. ACM Trans. Auton. Adaptive Syst.7(1), 8:1–8:61(2012)
66. 
