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
    - closed feedback control loop: monitor and adapte systems to achieve goals

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
    - uncertainty: important concern for SAS
    - how to assure the compliance of the adaptation goals of SAS that operates under uncertainty
    - SAS have been designed to tackle the uncertainty problem [27] [50] [64]
        - SAS can be thought as a shift from design to runtime of change activities

    - different sources of uncertainty [43] 
        - uncertainty related to the system
            - simplifying assumptions
            - model drift: misalignment between elements of the system and their representations
            - incompleteness: some part of the system or its model are missing that may be added at runtime
            - future parameters value: uncertainty of values in the future that are relevant for decision-making
            - automatic learning: learning with imperfect and limited data or randomness in the model and analysis
            - adaptation functions: imperfect monitoring, decision making, and executing functions for realising adaptation
            - decentralisation: lack of accurate knowledge of the entire system state by distributed parts of it
        - uncertainties related to the goals
            - requirement elicitation
            - specification of goals: difficultu to accurately specify the preferences of stakeholders
            - future goal changes
        - uncertainty related to the context
            - execution context: context based model on monitoring mechanisms that might not be able to accurately determine the context and its evolution
            - noise in sensing: sensors/probes are not ideal devices and they can provide inaccurate data
            - different sources of information: incaccuracy due composing and integrating data originating from different sources
        - uncertainty related to humans
            - human in the loop: human behaviour is uncertain
            - multiple ownershiper: the exact nature and behaviour of parts of the system provided by different stakeholders may be partly unknown when composed

    - pioneering approach: Runtime Quantitative Verification (RQV)
        - mathematical based approach
        - analyse quality properties of stochastic system
    - Quality-of-Service Management and Optimisation of Service-Based Systems (QoSMOS) [13]
        - offers clients remote access to a composition of Web services through a workflow engine
        - goal: provide users the functionnality of the composite service with particular qualitities
        - adaptation problem: select concrete services and allocate resources to concrete servces such that the required qualities are guaranteed
        - implementens the MAPE-k loop
            - monitor update an operational model, here can be different types of Markovian models, like discre-time Markov Chain
            - analyze will use model checking, like PRISM [42], approach to identify the service configurations that satisfy the quality-of-service requirement
                - requirements can be expressed in Probabilistic Computation Tree Logic (PCTL)
    - ActivFORMS [37]: approach that provide functional correctness of the managing system that is based on executable formal models
        - 3 layers architectures: Goal management, chanegege management and managed system
        - relies on formally specified templates that can be used to design and verify executable formal methods of MAPE loops [31]
        - eliminated the need to generate controller code, provides additional assurance for it
        - support on-the-fly changes of the running models using the goal management interface, crucial to support dynamic changes of adaptation goals

Sum-up:
    - uncertainty is key driver for self-adaptation
    - 4 different sources of uncertainty: uncertainty of the system, of its goals, ot the context, and of the human implied in the process
    - Guarantees for a managing system include guarantees for the adaptation goals (qualities) and the functional corectness of the adaptation components themselves
    - runtime quantitative verification tackles the paradoxical challenge of providing guarantess for the goal of a system that is exposed to continuous uncertainty
    - executable formal models of feedback loops eliminate the need to generate controller code and to provide assurances for it, this approach supports on-the-fly changes of the deployedmodels, which is crucial for changing adaptation goals during operation

**Control-Based Adaptation**
    - SAS: application of the control theory [24] [34]
    - control theory: mathematical founded discipline that provides technique and toold to design and formally analyse systems
        - 2 parts: a controller (managing system) and a target system (managed system)
        - setpoints: target value, represent a goal 
        - output: source for the controller, it compares the output with the setpoint and apply changes if needed
        - goal of the controller: setpoint == output, reducing the effects of uncertainty (here disturbances or noise)

    - different kind of controllers:
        - Proportional-Integral-Declarative (PID)
            - adds an additional control loop to adjust the controller, to cope with slow occuring changes of the target system [10]
        - Push-Button Methodology (PBM) [28]
            - model building phase: linear model of the software is built automatically, model identifying by running on-the-fly experiments on the software: test of sampled values of the control variable and measures the effects on specified non-functional requirement, result: a mapping variable settings to measured feedback
            - controller synthesis phase: a controller uses the model to adatp the software automatically
            - model updated at runtime according to the system behaviour
            - provide formal guarantee for system stability, absence of overshootm settling time, and robustness
            - guarantees for settling time and robustnes depend on the so-called controller pole
            - drawback: can deal with only one setpoint value
    
    - system model 2 two kinds of equations
        - difference equations (discrete time)
        - differential equations (continuous time)
    - allow to check
        - overshoot: when the value is being greater than the setpoint
        - setting time: time required to converge the controlled variable to the setpoint
        - steady-state error: amplitude of oscillations of the system around the output value
        - stability: ability to the system to converge to the setpoint value
    - these elements can be used for quality-of-service metrics



Sum-up:
    - control theory offers a mathematical foundation to design and formally analyse SAS
    - Adaptive controllers that are able to adjust the controller strategy at runtime are particularly interesting to control computing systems
    - control theory allows providing analytical guarantees for stability of SAS, absence of overshoot, setting time, and robustness
    - linear models combined with online updating mechanisms have demonstrated to be very useful for a variety of control-based SAS


# Bibliography

0. Weyns, D. (2019). Software Engineering of Self-adaptive Systems. In Handbook of Software Engineering (pp. 399-443). Springer, Cham.
2. Andersson, J., de Lemos, R., Malek, S., Weyns, D.: Reflecting on self-adaptive softwaresystems. In: Software Engineering for Adaptive and Self-Managing Systems, SEAMS ’09.IEEE Computer Society, Washington (2009)
3. Baldauf, M., Dustdar, S., Rosenberg, F.: A survey on context-aware systems. Int. J. Ad HocUbiquit. Comput.2(4), 263–277 (2007)
4. Baresi, L., Ghezzi, C.: The disappearing boundary between development-time and run-time. In:Workshop on Future of Software Engineering Research, FoSER ’10. ACM, New York (2010)
10. Brun, Y., Marzo Serugendo, G., Gacek, C., Giese, H., Kienle, H., Litoiu, M., Müller, H.,Pezzè, M., Shaw, M.: Engineering self-adaptive systems through feedback loops. In: SoftwareEngineering for Self-adaptive Systems, pp. 48–70. Springer, Berlin (2009)
13. Calinescu, R., Grunske, L., Kwiatkowska, M., Mirandola, R., Tamburrelli, G.: Dynamic QoSmanagement and optimization in service-based systems. IEEE Trans. Softw. Eng.37(3), 387–409 (2011)
17. Cheng, B., de Lemos, R., Giese, H., Inverardi, P., Magee, J., Andersson, J., Becker, B.,Bencomo, N., Brun, Y., Cukic, B., Di Marzo Serugendo, G., Dustdar, S., Finkelstein, A., Gacek,C., Geihs, K., Grassi, V., Karsai, G., Kienle, H., Kramer, J., Litoiu, M., Malek, S., Mirandola,R., Müller, H., Park, S., Shaw, M., Tichy, M., Tivoli, M., Weyns, D., Whittle, J.: SoftwareEngineering for Self-adaptive Systems: A Research Roadmap. Lecture Notes in ComputerScience, vol. 5525. Springer, Berlin (2009)
18. Cheng, B., Sawyer, P., Bencomo, N., Whittle, J.: A goal-based modelling approach todevelop requirements of an adaptive system with environmental uncertainty. In: InternationalConference on Model Driven Engineering Languages and Systems, MODELS ’09. Springer,Berlin (2009)
23. De Wolf, T., Holvoet, T.: Emergence versus Self-organisation: different concepts but promisingwhen combined. In: Engineering Self-organising Systems: Methodologies and Applications,pp. 1–15. Springer, Berlin (2005)
24. Diniz, P.C., Rinard, M.C.: Dynamic feedback: an effective technique for adaptive computing.In: Conference on Programming Language Design and Implementation, PLDI ’97. ACM, NewYork (1997)
27. Esfahani, N., Malek, S.: Uncertainty in self-adaptive software systems. In: Software Engineer-ing for Self-adaptive Systems II, pp. 214–238. Springer, Berlin (2013)
28. Filieri, A., Hoffmann, H., Maggio, M.: Automated design of self-adaptive software withcontrol-theoretical formal guarantees. In: International Conference on Software Engineering,ICSE ’14. ACM, New York (2014)
30. Garlan, D., Cheng, S., Huang, A., Schmerl, B., Steenkiste, P.: Rainbow: architecture-based self-adaptation with reusable infrastructure. Computer37(10), 46–54 (2004)
31. Gil, D., Weyns, D.: MAPE-K formal templates to rigorously design behaviors for self-adaptivesystems. ACM Trans. Auton. Adapt. Syst.10(3), 15:1–15:31 (2015)
34. Hellerstein, J., Diao, Y., Parekh, S., Tilbury, D.: Feedback Control of Computing Systems.Wiley, Hoboken (2004)
36. IBM Corporation: An Architectural Blueprint for Autonomic Computing. IBM White Paper(2003).http://www-03.ibm.com/autonomic/pdfs/, AC Blueprint White Paper V7.pdf (LastAccessed Jan 2017)
38. Jackson, M.: The meaning of requirements. Ann. Softw. Eng.3, 5–21 (1997)
39. Kephart, J., Chess, D.: The vision of autonomic computing. Computer36(1), 41–50 (2003)
40. Kramer, J., Magee, J.: The evolving philosophers problem: dynamic change management.IEEE Trans. Softw. Eng.16(11), 1293–1306 (1990)
41. Kramer, J., Magee, J.: Self-managed systems: an architectural challenge. In: Future of SoftwareEngineering, FOSE ’07. IEEE Computer Society, Washington (2007)
42. Kwiatkowska, M., Norman, G., Parker, D.: Probabilistic symbolic model checking with prism:a hybrid approach. In: Tools and Algorithms for the Construction and Analysis of Systems,TACAS ’02. Springer, Berlin (2002)
43. Mahdavi-Hezavehi, S., Avgeriou, P., Weyns, D.: A classification of current architecture-based approaches tackling uncertainty in self-adaptive systems with multiple requirements.In: Managing Trade-offs in Adaptable Software Architectures. Elsevier, New York (2016)
50. Perez-Palacin, D., Mirandola, R.: Uncertainties in the modelling of self-adaptive systems:a taxonomy and an example of availability evaluation. In: International Conference onPerformance Engineering, ICPE ’14 (2014)
52. Salehie, M., Tahvildari, L.: Self-adaptive software: landscape and research challenges. Trans.Auton. Adaptive Syst.4, 14:1–14:42 (2009)
55. Silva Souza, V., Lapouchnian, A., Robinson, W., Mylopoulos, J.: Awareness requirements foradaptive systems. In: Software Engineering for Adaptive and Self-managing Systems, SEAMS’11. ACM, New York (2011)
57. van Lamsweerde, A., Darimont, R., Letier, E.: Managing conflicts in goal-driven requirementsengineering. IEEE Trans. Softw. Eng.24(11), 908–926 (1998)
59. Weyns, D., Ahmad, T.: Claims and Evidence for Architecture-Based Self-adaptation: ASystematic Literature Review, pp. 249–265. Springer, Berlin (2013)
61. Weyns, D., Malek, S., Andersson, J.: FORMS: unifying reference model for formal specifi-cation of distributed self-adaptive systems. ACM Trans. Auton. Adaptive Syst.7(1), 8:1–8:61(2012)
64. Weyns, D., Bencomo, N., Calinescu, R., Cámara, J., Ghezzi, C., Grassi, V., Grunske, L.,Inverardi, P., Jezequel, J.M., Malek, S., Mirandola, R., Mori, M., Tamburrelli, G.: Perpetualassurances in self-adaptive systems. In: Software Engineering for Self-adaptive Systems.Lecture Notes in Computer Science, vol. 9640. Springer, Berlin (2016)
66. Whittle, J., Sawyer, P., Bencomo, N., Cheng, B., Bruel, J.M.: RELAX: incorporating uncer-tainty into the specification of self-adaptive systems. In: IEEE International RequirementsEngineering Conference, RE’09. IEEE Computer Society, Washington (2009)
