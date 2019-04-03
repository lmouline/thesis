A Unified Modeling Framework to Abstract Knowledge of Dynamically Adaptive System
---

**Legend:**
    - #: chapter
    - ##: section


# Abstract
**Goal:** Present the context, the vision defended and the contributions
**Link with previous chapter:** None (standalone chapter)
**Link with next chapter:** None (standalone chapter)
**Abstrat:** cf. vision defended 
**Contents:** cf. abstract.text




# Introduction
**Goal:** Scope the thesis to specific systems, present the problematic and the challenge(s), show the structure of the thesis
**Link with previous chapter:** None (begining of the thesis)
**Link with next chapter:** Next chapter is the vision that should address the challenge described in this section
**Abstrat:** Model-driven engineering methodology and dynamically adaptive systems approach are combined to tackle new challenges brought by systems nowadays. After introducing these two software engineering techniques, I give one example of such systems: the Luxembourg smart grid. I will also use this example to highlight two of the problematics: uncertainty of data and delays in actions. Among the different challenges which are implied by them, I present the global one addressed by the vision defended in this thesis: modeling of temporal and uncertain data. This global challenge can be addressed by splitting up in several ones. I present two of them, which are directly tackled by two contributions presented in this thesis.
**Contents:**
## Adaptation and abstaction in a nutshell
**Goal:** Introduce the general concept (DAS, MDE) and scope the thesis
**Link with previous section:** None (first section)
**Link with next section:** Should introduce necessary concepts to introduce the use case, problematic, and challenges
**Introduction:** Adaptation allows a system to be reconfigured at runtime in order to optimize user-defined characteristics. For example, cloud infrastructure will modify the number of running servers to optimize the power needed to work. This mechanism, also called the adaptation process, can be split into four stages, following the MAPE-k loop theory: monitoring, analyzing, planning and executing. These four stages require an efficient knowledge representation of the system, its environment and the specifications. This representation can be given following the model-driven engineering. In this section, I detail these two mechanisms as well as the terminology used in the document and the assumptions made on them.

**Contents:**
<!-- Terminology -->
- reasoning process
- adaptation process is an example of reasoning process
- model: an abstraction of a problem, a solution, a system, a behavior. The model should respect a definition, named meta-model.
- meta-model: a definition of models.

<!-- DAS -->
- system which allow adaptation process
- follow the MAPE-k loop principle

<!-- MDE -->
- methodolofy to define a model which should conform to a meta-model

<!-- Assumption / consideration made -->
- we considered the MAPE-k loop as centralized to simplify the reasoning
    - the fact that is centralized or not do not impact the thesis defended
- the system can or cannot be self-*
    - this fact do not impact the thesis defended


## Use case: Luxembourg smart grid
**Goal:** Present the creos use case
**Link with previous section:** necessary concepts to understand this use case should have been introduced
**Link with next section:** use case used to exemplify the problematic and the challenges as well as the vision and the contributions
**Introduction:** The smart grid is a novel approach which adds information and communication technologies into the power grid in order to cope with the challenges of power distribution. They will thus win the ability to heal automatically from ongoing incidents, like overload, with less and less human intervention. In order to reach this future, an abstraction of the grid state with the past, ongoing and future events is needed to enable the adaptation process. They are thus a good use case for my thesis. I will thus explain the Luxembourg smart grid example, provided by the industrial partner, Creos S.A., implied in my thesis.
**Contents:**
<!-- introduce smart grids -->
- Smart grid: ICT into power grid

<!-- [Creos project]  Problem -->
- incidents happen on the grid
    - overloads in cable, substation or cabinets
    - cables cut due to
        - public construction
        - natural damage (trees, ...)
- need a "real-time" 
<!-- [Creos project] Solution -->
- overtake incidents
- analyse the state of the grid
    - read data
    - approximate data
    - infer data
- compute possible solutions
- reconfigure the grid

## Problematic
**Goal:** Present and argue the problematic addressed by the thesis
**Link with previous section:** present the problemeatic which exist in the previously described context and exemplify it with the given example 
**Link with next section:** introduce the SE challenges that come with these problematics
**Introduction:** Adaptation and abstraction require data to either reason over them or build the representation. However, these data are always uncertain. If this uncertainty can significantly impact the adaptation process, first it should be present in the abstraction layer and second considered by the adaptation process. Moreover, adaptation creates actions which need time to have measurable effects. If this delay is greater than the frequency of the reasoning process, then actions with their effects should be part of the abstraction layer in order to be considered by the adaptation process. In this section, I detailed these two problematics characteristics of adaptive systems and I exemplify them on the Luxembourg smart grid use case.
**Contents:**
- data are uncertain and action have delayed

<!-- uncertain data -->
- data have alwas a precision
- if data precision > reasoning precision, then it can result in a sub-optimal decision process
- run through theoritical example(s)
- example: show the problem with a rule engine as example
- exemple with use case


<!-- delayed action -->
- time T between an action A has been decided and time where the effects of A can be measured is not null
- if T > reasoning frequency, result in a sub-otpimal decision process
- run through theoritical example(s)
- example: show the problem with a rule engine as example
- exemple with use case

## Challenges
**Goal:** present the challenges adressed by the thesis + those tackled by the contributions
**Link with previous section:** challenge that due to the previously described problematic
**Link with next section:** None (last section of this chapter)
**Abstrat:** The two problematics described in the previous section come with challenges that should be, and that are, addressed by the software engineering research community. Among them, I focus on the modeling one which I describe in this section. In order to face it, this challenge should be split into smaller ones. Among them, I describe in this section the two that are directly tackled by the contributions proposed in this thesis. First, I will describe the challenge of the actions, with their future effects and their contexts, representation. Second, I will present the challenge of manipulating uncertain data during the adaptation process.
**Contents:**
<!-- Global challenge -->
- how to represent the uncertain knowledge allowing to efficiently query it and to represent ongoing actions in order to improve adaptation processes?

<!-- Sub-challenge 1 (Context model) -->
- the lack of efficient temporal representation limits the tracing ability of adaptation process
    - limit the use of knowledge about ongoing actions with their effects

<!-- Sub-challenge 2 (Ain'tea) -->
- Can the type system detect errors related to uncertainty management?
- Does the uncertainty management have an impact on the expressiveness of a language? 


# A unified modeling framework
**Goal:** Present and argue for the the unified modeling framework. Present also arguments against this vision and mitigate them.
**Link with the previous chapter:** Address the challenge presented in the previous chapter
**Link with the next chapter:** Now that I have presented the vision, I will describe two contributions which support it.
**Abstrat:** As argued in the introduction section, adaptation combined with abstraction comes with a novel challenge: the representation of uncertain data and delayed action. In this chapter, I present my vision concerning a modeling framework, named XXX, that should consider uncertainty and time as first-class concepts. I will first argue towards this vision. Before detailing the synthesis of this vision, I show arguments against this vision. To do so, I answered with pros and cons to three questions: why do we need a modeling framework? why time and uncertainty should be put as first-class concepts? why should time and uncertainty combined in the same structure?
**Contents:**
## Towards a unified modeling framework
**Goal:** Present and argue for the the unified modeling framework
**Link with the previous section:** None (first section)
**Link with the next section:** Here I present pros whereas in the next section I present cons
**Introduction:** In this section, I present the pros of the vision. I will first present the benefits of a modeling framework. Second, I will explain that time and uncertainty are cross-domain concepts. Finally, I will detail the existing link between uncertainty and temporal data, such as delayed action.
**Contents:**
<!-- why a modeling framework? -->
- benefits of abstraction
    - remove unecessary details which may complexify the reasoning
    - bring specific view for stakeholders, view that use domain vocabulary / syntax / concepts

<!-- why time and uncertainty as first-class concepts? -->
- time and uncertainty appears in most of DAS
- improve performances
    - structure defined with time and uncertainty in mind
        - enable default index on the temporal aspect
- improve efforts in usage
    - temporal and/or uncertain data directly 

<!-- why combining time and uncertainty in the same structure? -->
- Concern linked: each data as a validity period (more or less long) [not a binary concept]
    - temporal data come with uncertainty
    - uncertainty may come with time

## Away from a unified modeling framework
**Goal:** Present arguments against this vision.
**Link with the previous section:** Here I present cons whereas in the prev. section I present pros
**Link with the next section:** Synthesis the arguments described in and in the prev. sect.
**Introduction:** In this section, I present the cons of the vision. I will first present the limits of a modeling framework. Second, I will explain that time and uncertainty could be considered as normal attributes, without modifying the model definition itself. Finally, I will detail the separation of concerns principle that may be broken by my vision.
**Contents:**
<!-- why a modeling framework? -->
- limitation of abstraction mechanism
    - can introduce overhead that can impact the performances (CPU, memory)
    - lose of control of the full technology stack
    - abstraction may not consider 10% exceptionals cases

<!-- why time and uncertainty as first-class concepts? -->
- uncertainty and time can be defined as normal attributes in existing structures -> reuse of known tools by developers
    - indexes mechanism can also be added on them

<!-- why combining time and uncertainty in the same structure? -->
- Separation of concerns
    - reduce complexity for developers
    - improve their productivity

## Synthesis
**Goal:** Balance the pros with the cons and mitigate the cons
**Link with the previous section:** use the pros and cos to conclude
**Link with the next section:** None (last section of the chapter)
**Introduction:** In this section, I mitigate the cons with the pros. I will first explain that it is all about the tradeoff between the benefice of a modeling approach an approach using modeling methodology. Second, I will explain that if a structure has not been thought to manage time and uncertainty, then it will be less efficient. Finally, I will explain that the definition of concern is blurring and that for DAS, I consider time and uncertainty as the same concern. 
**Contents:**
<!-- why a modeling framework? -->
- [cons.1] strong statements not always true
    - maybe be true for the few experts but not for all: high layer contains a huge knowledge about low level ones
        - C++ compiler writes better assembly code than most of developers do + contains years of research
    - abstraction layer does not always introduce measurable overhead
        - **NEED EXAMPLE**
    - tradeoff question between the overhead and time spend on other than memory management [pros.1]
        - Java have a bigger memomry consumption than C but developers do not have to think about the memory management + Java developers to do not face memory exception
- [cons.2] abstraction does not mean black box: hidden technologies is still accessible and can be understood for debug purpose, optimization ,etc
- [cons.3] it exists techniques to leave the "high" level of abstraction
    - for example, in C assembly language can be inserted, in MD HTML code can be added, Java can call C functions, etc

- abstraction is a key concept in IT [pros.1]
    - how many people is able to write/read CPU instructions?
<!-- why time and uncertainty as first-class concepts? -->
- [cons.1] time and uncertainty call for special structures and indexes
    - existing structures can be tweaked to consider them, but would be less efficient.
<!-- why combining time and uncertainty in the same structure? -->
- [cons.1] definition of concerns is not really defined. I consider that for DAS they are part of the concern

# A context model to represent actions, their contexts and their impacts
**Goal:** Present the first contribution: temporal Context model
**Link with the previous chapter:** This contribution support the vision defended in the previous section
**Link with the next chapter:** No direct link with the next section. Used for sota + conclusion 
**Abstrat:** The evolving complexity of adaptive systems impairs our ability to deliver anomaly-free solutions. Fixing these systems require a deep understanding on the reasons behind decisions which led to faulty or suboptimal system states. Developers thus need diagnosis support that trace system states to the previous circumstances –targeted requirements, input context– that had resulted in these decisions. However, the lack of efficient temporal representation limits the tracing ability of current approaches. To tackle this problem, we first propose a knowledge formalism to define the concept of a decision. Second, we describe a novel temporal data model to represent, store and query decisions as well as their relationship with the knowledge (context, require- ments, and actions). We validate our approach through a use case based on the smart grid at Luxembourg. We also demonstrate its scalability both in terms of execution time and consumed memory
**Contents:** 
- (ctrl-p/ctrl-v from rejected long ICAC paper)





# Ain'tea: a language to manipulate uncertain data
**Goal:** Present the second contribution: Ain'tea
**Link with the previous chapter:** No direct link with the previous chapte. Will be combined with it in the conslusion chapter + used also in SOTA chapter.
**Link with the next chapter:** Contribution that will be compared with SOTA
**Abstrat:** Due to the unreliability of information sources, data received and managed by a monitoring system, like a smart grid system, are uncertain. Neglecting this uncertainty results in a misinterpretation of the reality,\ie system state. This remains true for other domains in computer science, \eg Informations Systems, and Cyber-Physical Systems. Managing data uncertainty requires a solid knowledge of probability theory and its implementation is a complex task. In particular, due to a lack of solutions for abstracting data uncertainty, this concept is mainly ignored by developers despite its significance. \ob{the term element is unclear} In this paper, we argue that data uncertainty should be a first-class concern of lots of programming languages to benefit from a specific semantics and specific typing rules. After a key identification of the concepts associated with data uncertainty concerns, this papers presents UMiniJava, a language that integrates them directly into the grammar, type system and semantics part. To validate our approach, we apply our approach to a smart-grid scenario, compare it to a classic approach, not taking uncertainty into consideration and show the implementation effort.
**Contents:** 
- (ctrl-p/ctrl-v from submitted journal paper)




# State of the art
**Goal:** Present the current state of the art approaches and compare my vision and the two contributions with them 
**Link with the previous chapter:** After detailling the vision and the 2 contributions, I present the related work 
**Link with the next chapter:** This comparaison will help to conclude the thesis
**Abstrat:** 
**Contents:**
<!-- Modeling -->
## Temporal modeling
## Probabilistic programing
## Uncertainty programing

<!-- DAS -->
## Action representation
## Knowledge representation
## Knowledge formalization

# Conclusion & Perspectives
**Goal:** Sum-up the vision and the two contributions and present the perspectives
**Link with the previous chapter:** summerize previous chapters
**Link with the next chapter:**  None (end of the thesis)
**Abstract:** 
**Content:**
## Conclusion
## Perspectives



# List of figures
**Goal:** Present a listing of the different figures with a short description of it
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** None
**Content:**



# List of code snippets (if any)
**Goal:** Present a listing of the different code snippets with a short description of it
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** None
**Content:**



# List of abbreviations
**Goal:** Present a listing of the different abbreviations with their meanings
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** None
**Content:**

- DAS
- MDE
- ICT



# Glossary
**Goal:** Present a listing of the different words, which have a specific meaning in the context of the thesis, with their definitions
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** None
**Content:**

- context
- model
- knowledge
- action
- real-time
- smart grid
- delayed action
- uncertainty
- data uncertainty
- Ain'tea




# Acknowledgment
**Goal:** Say thank you
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** Thank you everyone.
**Content:**