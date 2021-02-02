# USENIX Enigma 2020

###[Is Cyber War Legal: A Four Hundred Year Retrospective](https://www.usenix.org/conference/enigma2021/presentation/shapiro)
- Before 1928, war between states was a legal method of settling debts. Economic sanction by a neutral state was illegal.
- One solution, is a club that an evict those misbehaving.
- A network event can be an act of crime, act or war, act of espionage (which is recognized legal).

###[Security & U.S. Political Campaigns: A Study & Expert Roundtable](https://www.usenix.org/conference/enigma2021/presentation/consolvo)
- Incidents can be particularly damaging to political campaigns, which are short-lived, constrained in resourcing, chaotic, and poorly bounded.
- The weakest link is "account" control ... and campaigns have no IT staff
- Standardizing UX across account providers is the main barrier
- Early compromise of account for those who can become elected later

###[The Adventurous Tale of Online Voting in Switzerland](https://www.usenix.org/conference/enigma2021/presentation/folini) [Slides](https://www.slideshare.net/ChristianFolini/the-adventurous-tale-of-online-voting-in-switzerland/ChristianFolini/the-adventurous-tale-of-online-voting-in-switzerland)
- Internet voting produces pre-validated ballots and is more accessible
- Frontrunning protocol considered secure and private, but a fatal vuln was found within a day of publishing the source.
- A panel will be rewriting the whole thing. [Eng summary](https://www.bk.admin.ch/dam/bk/en/dokumente/pore/Summary%20of%20the%20Expert%20Dialog%202020.pdf.download.pdf/Summary%20of%20the%20Expert%20Dialog%202020.pdf)

###[The Full Stack Problem of Election Security](https://www.usenix.org/conference/enigma2021/presentation/cable)
- Convincing the electorate of the validity of an election is the goal.
- Voting systems should use already-made production infra rather than developing it.

###[Hardware: A Double-Edged Sword for Security](https://www.usenix.org/conference/enigma2021/presentation/fern)
- Complete open systems hardware to software are the solution
- Hardware bugs fixes are opt-in

###[A Sound Mind in a Vulnerable Body: Practical Hardware Attacks on Deep Learning](https://www.usenix.org/conference/enigma2021/presentation/hong)
- Hardware attacks break math. The assumption is that only "weak" hardware bugs remain in multitenant.
- Rowhammer/cache side-channel attack on multitenant DNN ML environments reduces accuracy of inference by at least 10% 60% of the time by targeting params.

###[A Quest for the Physics of Cyberspace](https://www.usenix.org/conference/enigma2021/presentation/rrushi)
- Making therodynamics analogies for a running CPU
- A gate network performs a measureable unit of work, aggregated to a larger scale, and profiled at the OS level to detect anomalies. 

###[No Data, No Problem—Giving Nuclear Inspectors Better Tools without Revealing State Secrets](https://www.usenix.org/conference/enigma2021/presentation/negus)
- Secure multiparty computation applied to nuclear regulation... specifically measurements of particle emission. The parameters detect anomalies in private input data.
- CypherCiruit garbled circuit implementation
- Spoofing input data "solved" by tamperevident hardware

###[Gone, But Not "Forgotten"—Technical & Practical Challenges In Operationalizing Modern Privacy Rights](https://www.usenix.org/conference/enigma2021/presentation/huang)
- Abstract identifiers above the layer the stores them in different dbs, then replace all at once
- Regular privacy reviews as part of product planning
- Downstream derived PII included

###[Implementing Differential Privacy for the 2020 Census](https://www.usenix.org/conference/enigma2021/presentation/garfinkel)
- Direct output of DP releases are not useful at the scale of microdata, releases cannot be frequent, and data are synthetic ... all disappointing users
- DP for 14 years, no common adoption yet
- Expensive to compare accuracy/privacy tradeoffs for epsilon as requires rerunning the model

###[Privacy, Measurably, Isn't Dead](https://www.usenix.org/conference/enigma2021/presentation/kelley) [Fundamental ref](https://www.computer.org/csdl/proceedings-article/sp/2021/893400a473)
- Global expectation among 90,000 is for more privacy over the next ten years, though geographically divergent.
  - US/Ireland/France respondents indicate pessimism
  - China/Thailand/Nigeria optimistic
  - Did not define privacy in the tool
- Globally, responses are split on privacy excepts for law enforcement, though agree on defaulting to disallow access until suspected

###[Privacy and Security Nutrition Labels to Inform IoT Consumers](https://www.usenix.org/conference/enigma2021/presentation/emami-naeini) [Source](https://www.iotsecurityprivacy.org/downloads/Emami-Naeni_CHI19_ExploringPrivacy.pdf)
- [Tool is posted](https://www.iotsecurityprivacy.org)

###[Contact Tracing](https://www.usenix.org/conference/enigma2021/presentation/panel-contact-tracing) Panel
- Decentralized tracking became the beacon tracing model.
- Need for systems made across disciplines that are already set up before events like these.
- Solutions are compromises between privacy and the need for epidemiological data collection.
- Google attempted to use aggregate location data from the mapping service, which was not scientifically useful.
- BLE beacons required changes to OS primitives, cross-platform, and an API for public health organizations to use. [Google source](https://github.com/google/exposure-notifications-server)
- Public trust problems with the companies making beacon servers has led to low adoption.
- [Pandemic privacy law analysis](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3690004)
- Contact tracing normalizes tracking by authorities
- Having a "high privacy promise" encouraged enrollment.
- Cycling identifiers daily matches the CDC daily exposure measurement, which synchronizes the privacy spec and the scientific goal.
- How can a mobile user know the difference between a good and bad app? Privacy oversteps cannot be rolled back once used.
- Current exposure notification API is to be turned off regionally after emergency.

###[The State of 0-Day in-the-Wild Exploitation](https://www.usenix.org/conference/enigma2021/presentation/stone)
- 25% of detected 0day are reused bugs
- Patch and infer bugs from patches

###[The Practical Divide between Adversarial ML Research and Security Practice: A Red Team Perspective](https://www.usenix.org/conference/enigma2021/presentation/anderson) [Source](https://github.com/mitre/advmlthreatmatrix/blob/master/pages/case-studies-page.md#microsoft---azure-service)
- ML security is an element of an attack tree on a bigger system
- ROE was to cause an availability problem by causing an integrity problem for a private model
- Recon with excessive access to training data and training source, served as basis for noisy neighbors
- Add to healthchecks: hash of training set, weights

###[Breaking Trust – Shades of Crisis Across an Insecure Software Supply Chain](https://www.usenix.org/conference/enigma2021/presentation/herr) [Source](https://www.atlanticcouncil.org/resources/breaking-trust-the-dataset/)
- Supply chain always a problem
- Trend: SDKs compromised more than other years, more likely to be on dev dependencies than releases (but still also releases)

###["I Thought I Was Being Strong with a Complicated Person": The Tales of Intimate Gender-Based Online Abuse in the Global South](https://www.usenix.org/conference/enigma2021/presentation/celi)
- Issue of digital literacy and right of access to accounts.
- Ref global research

###[Da Da: What Shark Conservation Teaches Us about Emotionality and Effective Communication Strategies for Security and Privacy](https://www.usenix.org/conference/enigma2021/presentation/ensign)
- Response to crises face pressure from the public impression of severity.
- "Emotionality" driving responses: military response

###[Netflix Comparative ProdSec Programs Panel]
- Threat intelligence most overrated for production security, then WAFs, CSP headers, static analysis, pentesting, bug bounties, and dynamic analysis
- As opposed to appsec people, communication skills, paved roads
- Tiering


