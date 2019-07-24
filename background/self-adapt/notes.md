# Approaches to engineer SAS

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


# Bibliography

0. Weyns, D. (2019). Software Engineering of Self-adaptive Systems. In Handbook of Software Engineering (pp. 399-443). Springer, Cham.
2. Andersson, J., de Lemos, R., Malek, S., Weyns, D.: Reflecting on self-adaptive softwaresystems. In: Software Engineering for Adaptive and Self-Managing Systems, SEAMS ’09.IEEE Computer Society, Washington (2009)
3. Baldauf, M., Dustdar, S., Rosenberg, F.: A survey on context-aware systems. Int. J. Ad HocUbiquit. Comput.2(4), 263–277 (2007)
4. Baresi, L., Ghezzi, C.: The disappearing boundary between development-time and run-time. In:Workshop on Future of Software Engineering Research, FoSER ’10. ACM, New York (2010)
5. Baresi, L., Pasquale, L., Spoletini, P.: Fuzzy goals for requirements-driven adaptation. In: Inter-national Requirements Engineering Conference, RE ’10. IEEE Computer Society, Washington(2010)
7. Blair, G., Bencomo, N., & France, R. B. (2009). Models@ run. time. Computer, 42(10), 22-27.
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
44. Morin, B., Barais, O., Jezequel, J.M., Fleurey, F., Solberg, A.: Models at runtime to support dynamic adaptation. IEEE Comput.42(10), 44–51 (2009)
50. Perez-Palacin, D., Mirandola, R.: Uncertainties in the modelling of self-adaptive systems:a taxonomy and an example of availability evaluation. In: International Conference onPerformance Engineering, ICPE ’14 (2014)
52. Salehie, M., Tahvildari, L.: Self-adaptive software: landscape and research challenges. Trans.Auton. Adaptive Syst.4, 14:1–14:42 (2009)
55. Silva Souza, V., Lapouchnian, A., Robinson, W., Mylopoulos, J.: Awareness requirements foradaptive systems. In: Software Engineering for Adaptive and Self-managing Systems, SEAMS’11. ACM, New York (2011)
57. van Lamsweerde, A., Darimont, R., Letier, E.: Managing conflicts in goal-driven requirementsengineering. IEEE Trans. Softw. Eng.24(11), 908–926 (1998)
59. Weyns, D., Ahmad, T.: Claims and Evidence for Architecture-Based Self-adaptation: ASystematic Literature Review, pp. 249–265. Springer, Berlin (2013)
61. Weyns, D., Malek, S., Andersson, J.: FORMS: unifying reference model for formal specifi-cation of distributed self-adaptive systems. ACM Trans. Auton. Adaptive Syst.7(1), 8:1–8:61(2012)
64. Weyns, D., Bencomo, N., Calinescu, R., Cámara, J., Ghezzi, C., Grassi, V., Grunske, L.,Inverardi, P., Jezequel, J.M., Malek, S., Mirandola, R., Mori, M., Tamburrelli, G.: Perpetualassurances in self-adaptive systems. In: Software Engineering for Self-adaptive Systems.Lecture Notes in Computer Science, vol. 9640. Springer, Berlin (2016)
66. Whittle, J., Sawyer, P., Bencomo, N., Cheng, B., Bruel, J.M.: RELAX: incorporating uncer-tainty into the specification of self-adaptive systems. In: IEEE International RequirementsEngineering Conference, RE’09. IEEE Computer Society, Washington (2009)
