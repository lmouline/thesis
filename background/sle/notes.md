Software Language Engineering
---

# Software languages

- software language: all languages imply in SE (modeling language, programming languages, configuration languages, markup languages, formal, ontologies, ...) [158]
- 2 categories: [255]
    - Global-Purpose Languages: language that can be used in any application domain
    - Domain Specific Languages: expressiveness focus for one application domain [105] [187]
        - some may distinguish between dsml and dsl, not us
- GPL: used to develop any kind of software, but a developper won't manipulate concepts related to its problem -> difficult
- DSL: used to develop of specific part of the software, developer manipulate concepts related to their domains -> eay
    - models created with DSL can be understood by domain expert (non-developpers) [255]
    - more concise, intuitive, easier to understand, reason about, and maintain [254]
    - used for to create language-oriented programming [107] [271], language-ortiented modeling [69]
    - more and more used [198]
    - tooling: expensive and error-prone task [260]
    - external vs internal
        - external: language has its own infrastructure, designers free too choose syntax and semantics [259]
        - internal: used infrastructure of the host language [135], syntax/semantics encoded in the host language, often compared to fluent API [106]
            - ++: editors, parser, compilers for free
            - --: capabilities, syntax, semantics restricted to what the host language allow
            - can be developped using macros [44], desugaring [91], extensible compilers [199], meta-objects[245]
    - also: metamorphic DSLs[15]: DSL that can adapt to users and uses

# Software Language Engineering

- Kleppe: "the application os systematic, disciplined, and measurable approaches to the develpment, use, deployment, and maintenance of software languages" [158]
- complex tasks (FORTRAN: 18-man year [24])
- implementation of DSLs is similar than GPL [238] [262]
- software language == software [97]
- dev' DSL == dev' software + IDE and over servives
- dev DSL should be more beneficail than its dev' cost -> use of usual dev techniques
- languages have 3 components: abstract syntax, concrete syntax, and semantics [123]

**Abstract syntax**
- defines its syntactic constructs, independent of their representation [181]
- defines the "forms"
- abstract syntax -> representation of the AST of a language
- defined through a meta-language, two formlisms:
    - grammars, main approach: use of the BNF and extended BNF [276], abstract and concrete syntax are not separated
        - used for the formal specification and verification
        - primary input for compilers
        - parser generator (Yaxx, ANTLR) can generate a paerser from a grammar
        - language workebench can create editor support (syntax huighliting, document)
    - metamodels: allow to split the definition of abstract and concrete syntax, as argued by McCarthy [181]
- some language workbench linked grammar and metamodels (XText)
- Link between grammar and metamodel [16, 31, 157, 171]
- define concepts of a language

**Concrete syntax**
- define how concepts (defined in abstract) are represented and manipulated by users
- different kind: textual, graphical (eg., Scratch [222])
- (E)BNF -> specifies abtract and textual concrete syntax
- 1 abtract syntax -> n concrete ones

**Semantics**
- goal: attach meaning tp the construct of a language
- formal semantics enable formal reasoning about properties, runtime behaviour
- can enable the generation of some artefacts: interpreters, compilers, or type checkers

- static semantics: constraints on the structure of valid program (or model)
    - e.g., uniquenes of variable name, cycle in inheritence, type system

- dynamic semantics: runtime behaviour of the program
- 3 (non exclusives) approaches [194]
    - axiomatic semantics: semantics given in terms of predicted over its syntax (axions) [104]
        - e.g., Hoare triples [133]
    - translational semantics: defines an exogenous transformation from the abstract syntax to another language whose semantics is well defined
        - denotational semantics: when translation constructs mathematical object (denotations) 
    - operational semantics: defines the meaning of programs in terms of their execution, specified as a sequence of computation steps
        - takes the form of transition function over program configurations
        - 2 kind:
            - small-step operational semantics [219]: computations are defined one step at a time
            - big-step operational semantics / natural semantics [150]: programs directly related to the result

- small-step operational semantics
    - 1 popular formalism: Structural OPerational Semantics [219] and its extensions (MSOS [193], I-MSOS [195])
    - another popular formalism: attribute grammar [212]
        - can be used to compute values along the AST nodes to enrich it with semantic information
        - can also be used to define operational semantics by computing evaluation results

# Language workbench
- defined by Fowler [107]
- Environment to assist languages designers in enginnerng DSLS and assist users to use it
- old idea: CENTAUR system [42] developped in the 80s 
- offer a set of meta-languages that designers can use to express the different element of a language [259]

- some examples: Rascal [160], GME [175], Monticore [177] [166] [167], Spoofax [154] [259], [269], LISA [250], ASF+SDF[252], MPS [2], GEMOC [1]

- More detailled study: [92]

# Bibliography

1. http://gemoc.org/studio
2. https://www.jetbrains.com/mps/
15. Mathieu Acher, Benoit Combemale, and Philippe Collet. “Metamorphic Domain-Specific Languages: A Journey Into the Shapes of a Language”. In: Proceedings of the 2014 ACM International Symposium on New Ideas, New Paradigms, and Reflections on Programming & Software. ACM. 2014, pp. 243–253.
24. John W Backus et al. “The FORTRAN automatic coding system”. In: Papers presented at the February 26-28, 1957, western joint computer conference: Techniques for reliability. ACM. 1957, pp. 188–198.
42. Patrick Borras, Dominique Clément, Th Despeyroux, Janet Incerpi, Gilles Kahn, Bernard Lang, and Valérie Pascual. Centaur: the system. ACM, 1988.
44. Claus Brabrand and Michael I Schwartzbach. Growing languages with metamorphic syntax macros. Vol. 37. 3. ACM, 2002.
69. Benoit Combemale. “Towards Language-Oriented Modeling”. Accredi- tation to supervise research. Université de Rennes 1, Dec. 2015
91. Sebastian Erdweg, Tillmann Rendel, Christian Kästner, and Klaus Ostermann. “SugarJ: library-based syntactic language extensibility”. In: Proceedings of the 26th International Conference on Object-Oriented Programming Systems Languages and Applications (OOPSLA’11). ACM. 2011, pp. 391–406.
92. Sebastian Erdweg et al. “Evaluating and comparing language work- benches: Existing results and benchmarks for the future”. In: Computer Languages, Systems & Structures 44 (2015), pp. 24–47.
97. Jean-Marie Favre, Dragan Gasevic, Ralf Lämmel, and Ekaterina Pek. “Empirical language analysis in software linguistics”. In: International Conference on Software Language Engineering. Springer. 2010, pp. 316–326.
104. Robert W Floyd. “Assigning meanings to programs”. In: Mathematical aspects of computer science 19.19-32 (1967), p. 1.
105. Martin Fowler. Domain-specific languages. Pearson Education, 2010.
106. Martin Fowler. Fluent interface. http://martinfowler.com/bliki/ FluentInterface.html. 2005.
107. Martin Fowler. Language workbenches: The killer-app for domain specific languages. 2005.
123. David Harel and Bernhard Rumpe. “Meaningful modeling: what’s the semantics of" semantics"?” In: Computer 37.10 (2004), pp. 64–72.
133. Charles Antony Richard Hoare. “An axiomatic basis for computer programming”. In: Communications of the ACM 12.10 (1969), pp. 576– 580.
135. Paul Hudak. “Building domain-specific embedded languages”. In: ACM Computing Surveys (CSUR) 28.4es (1996), p. 196.
150. Gilles Kahn. “Natural semantics”. In: Annual Symposium on Theoretical Aspects of Computer Science. Springer. 1987, pp. 22–39.
154. Lennart CL Kats and Eelco Visser. “The spoofax language workbench: rules for declarative specification of languages and IDEs”. In: Proceed- ings of the 25th International Conference on Object-Oriented Program- ming Systems Languages and Applications (OOPSLA’10). ACM, 2010, pp. 444–463.
158. Anneke Kleppe. Software language engineering: creating domain-specific languages using metamodels. Pearson Education, 2008.
160. Paul Klint, Tijs van der Storm, and Jurgen Vinju. “Rascal: A do- main specific language for source code analysis and manipulation”. In: Source Code Analysis and Manipulation, 2009. SCAM’09. Ninth IEEE International Working Conference on. IEEE. 2009, pp. 168–177.
166. Holger Krahn, Bernhard Rumpe, and Steven Völkel. “MontiCore: a framework for compositional development of domain specific languages”. In: International journal on software tools for technology transfer 12.5 (2010), pp. 353–372.
167. Holger Krahn, Bernhard Rumpe, and Steven Völkel. “Monticore: Mod- ular development of textual domain specific languages”. In: Objects, Components, Models and Patterns. Springer, 2008, pp. 297–315.
175. Akos Ledeczi, Miklos Maroti, Arpad Bakay, Gabor Karsai, Jason Gar- rett, Charles Thomason, Greg Nordstrom, Jonathan Sprinkle, and Peter Volgyesi. “The generic modeling environment”. In: Workshop on Intelli- gent Signal Processing, Budapest, Hungary. Vol. 17. 2001, p. 114.
181. John McCarthy. “Towards a mathematical science of computation”. In: Program Verification. Springer, 1993, pp. 35–56.
187. Marjan Mernik, Jan Heering, and Anthony M Sloane. “When and How to Develop Domain-Specific Languages”. In: ACM Computing Surveys (CSUR) 37.4 (2005), pp. 316–344.
193. Peter D Mosses. “Modular structural operational semantics”. In: The Journal of Logic and Algebraic Programming 60 (2004), pp. 195–228.
194. Peter D Mosses. “The varieties of programming language semantics and their uses”. In: Perspectives of System Informatics. Springer. 2001, pp. 165–190.
195. Peter D Mosses and Mark J New. “Implicit propagation in structural operational semantics”. In: Electronic Notes in Theoretical Computer Science 229.4 (2009), pp. 49–66.
198. Leandro Marques do Nascimento, Daniel Leite Viana, Paulo AM Silveira Neto, Dhiego AO Martins, Vinicius Cardoso Garcia, and Silvio RL Meira. “A systematic mapping study on domain-specific languages”. In: Proceedings of the 7th International Conference on Software Engineering Advances (ICSEA’12). 2012, pp. 179–187.
199. Nathaniel Nystrom, Michael R Clarkson, and Andrew C Myers. “Poly- glot: An extensible compiler framework for Java”. In: International Conference on Compiler Construction. Springer. 2003, pp. 138–152
212. Jukka Paakki. “Attribute grammar paradigms—a high-level methodol- ogy in language implementation”. In: ACM Computing Surveys (CSUR) 27.2 (1995), pp. 196–255.
219. Gordon D Plotkin. A structural approach to operational semantics. Tech. rep. DAIMI-FN-19. Aarhus University, 1981
222. Mitchel Resnick et al. “Scratch: programming for all”. In: Communica- tions of the ACM 52.11 (2009), pp. 60–67.
238. Diomidis Spinellis. “Notable design patterns for domain-specific languages”. In: Journal of systems and software 56.1 (2001), pp. 91–99.
244. Eugene Syriani and Hüseyin Ergin. “Operational semantics of UML activity diagram: An application in project management”. In: Model- Driven Requirements Engineering Workshop (MoDRE), 2012 IEEE. IEEE. 2012, pp. 1–8.
245. Michiaki Tatsubori, Shigeru Chiba, Marc-Olivier Killijian, and Kozo Itano. “OpenJava: A class-based macro system for Java”. In: Workshop on Reflection and Software Engineering. Springer. 1999, pp. 117–133.
250. Edoardo Vacchi and Walter Cazzola. “Neverlang: a framework for feature-oriented language development”. In: Computer Languages, Sys- tems & Structures 43 (2015), pp. 1–40.
252. Mark Van den Brand et al. “The ASF+SDF meta-environment: A component-based language development environment”. In: International Conference on Compiler Construction. Springer. 2001, pp. 365–370.
255. Arie Van Deursen, Paul Klint, and Joost Visser. “Domain-Specific Languages: An Annotated Bibliography.” In: Sigplan Notices 35.6 (2000), pp. 26–36.
259. Eelco Visser, Guido Wachsmuth, Andrew Tolmach, Pierre Neron, Vlad Vergu, Augusto Passalaqua, and Gabrieël Konat. “A Language De- signer’s Workbench: A One-Stop-Shop for Implementation and Verifica- tion of Language Designs”. In: Proceedings of the 2014 ACM Interna- tional Symposium on New Ideas, New Paradigms, and Reflections on Programming & Software. ACM. 2014, pp. 95–111.
260. Markus Voelter. Generic tools, specific languages. TU Delft, Delft Uni- versity of Technology, 2014.
262. Markus Voelter, Sebastian Benz, Christian Dietrich, Birgit Engelmann, Mats Helander, Lennart CL Kats, Eelco Visser, and Guido Wachsmuth. DSL engineering: Designing, implementing and using domain-specific languages. CreateSpace, 2013.
269. Guido H Wachsmuth, Gabriel DP Konat, and Eelco Visser. “Language Design with the Spoofax Language Workbench”. In: Software, IEEE 31.5 (2014), pp. 35–43.
271. Martin P Ward. “Language-oriented programming”. In: Software-Concepts and Tools 15.4 (1994), pp. 147–161
276. Niklaus Wirth. “What can we do about the unnecessary diversity of notation for syntactic definitions?” In: Communications of the ACM 20.11 (1977), pp. 822–823.