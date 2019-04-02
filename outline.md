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
**Abstrat:** 
**Contents:**

## Adaptation and abstaction in a nutshell
**Goal:** Introduce the general concept (DAS, MDE) and scope the thesis
**Link with previous section:** None (first section)
**Link with next section:** Should introduce necessary concepts to introduce the use case, problematic, and challenges
**Abstrat:** 
**Contents:**
<!-- Introduce adaptation an DAS -->

<!-- Introduce MDE -->

## Use case: Luxembourg smart grid
**Goal:** Present the creos use case
**Link with previous section:** necessary concepts to understand this use case should have been introduced
**Link with next section:** use case used to exemplify the problematic and the challenges as well as the vision and the contributions
**Abstrat:** 
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
**Abstrat:** 
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
**Abstrat:** 
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
**Abstrat:**
**Contents:**

## Towards a unified modeling framework
**Goal:** Present and argue for the the unified modeling framework
**Link with the previous section:** None (first section)
**Link with the next section:** Here I present pros whereas in the next section I present cons
**Abstrat:**
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
**Abstrat:**
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
**Abstrat:**
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
**Goal:** 
**Link with the previous chapter:** 
**Link with the next chapter:** 




# Ain'tea: a language to manipulate uncertain data
**Goal:** 
**Link with the previous chapter:** 
**Link with the next chapter:** 




# State of the art
**Goal:** Present the current state of the art approaches and compare my vision and the two contributions with them 
**Link with the previous chapter:** After detailling the vision and the 2 contributions, I present the related work 
**Link with the next chapter:** This comparaison will help to conclude the thesis



# Conclusion & Perspectives
**Goal:** Sum-up the vision and the two contributions and present the perspectives
**Link with the previous chapter:** summerize previous chapters
**Link with the next chapter:**  None (end of the thesis)




# List of figures
**Goal:** Present a listing of the different figures with a short description of it
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)




# List of code snippets (if any)
**Goal:** Present a listing of the different code snippets with a short description of it
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)




# List of abbreviations
**Goal:** Present a listing of the different abbreviations with their meanings
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)
**Abstract:** None
**Content:**

- DAS
- MDE



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




# Acknowledgment
**Goal:** Say thank you
**Link with the previous chapter:** None (standalone chapter)
**Link with the next chapter:**  None (standalone chapter)