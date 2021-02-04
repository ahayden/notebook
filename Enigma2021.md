# USENIX Enigma 2021

### [Is Cyber War Legal: A Four Hundred Year Retrospective](https://www.usenix.org/conference/enigma2021/presentation/shapiro)
- Before 1928, war between states was a legal method of settling debts. Economic sanction by a neutral state was illegal.
- One solution, is a club that an evict those misbehaving.
- A network event can be an act of crime, act or war, act of espionage (which is recognized legal).

### [Security & U.S. Political Campaigns: A Study & Expert Roundtable](https://www.usenix.org/conference/enigma2021/presentation/consolvo)
- Incidents can be particularly damaging to political campaigns, which are short-lived, constrained in resourcing, chaotic, and poorly bounded.
- The weakest link is "account" control ... and campaigns have no IT staff
- Standardizing UX across account providers is the main barrier
- Early compromise of account for those who can become elected later

### [The Adventurous Tale of Online Voting in Switzerland](https://www.usenix.org/conference/enigma2021/presentation/folini) 
- [Slides](https://www.slideshare.net/ChristianFolini/the-adventurous-tale-of-online-voting-in-switzerland/ChristianFolini/the-adventurous-tale-of-online-voting-in-switzerland)
- Internet voting produces pre-validated ballots and is more accessible
- Frontrunning protocol considered secure and private, but a fatal vuln was found within a day of publishing the source.
- A panel will be rewriting the whole thing. [Eng summary](https://www.bk.admin.ch/dam/bk/en/dokumente/pore/Summary%20of%20the%20Expert%20Dialog%202020.pdf.download.pdf/Summary%20of%20the%20Expert%20Dialog%202020.pdf)

### [The Full Stack Problem of Election Security](https://www.usenix.org/conference/enigma2021/presentation/cable)
- Convincing the electorate of the validity of an election is the goal.
- Voting systems should use already-made production infra rather than developing it.

### [Hardware: A Double-Edged Sword for Security](https://www.usenix.org/conference/enigma2021/presentation/fern)
- Complete open systems hardware to software are the solution
- Hardware bugs fixes are opt-in

### [A Sound Mind in a Vulnerable Body: Practical Hardware Attacks on Deep Learning](https://www.usenix.org/conference/enigma2021/presentation/hong)
- Hardware attacks break math. The assumption is that only "weak" hardware bugs remain in multitenant.
- Rowhammer/cache side-channel attack on multitenant DNN ML environments reduces accuracy of inference by at least 10% 60% of the time by targeting params.

### [A Quest for the Physics of Cyberspace](https://www.usenix.org/conference/enigma2021/presentation/rrushi)
- Making therodynamics analogies for a running CPU
- A gate network performs a measureable unit of work, aggregated to a larger scale, and profiled at the OS level to detect anomalies. 

### [No Data, No Problem—Giving Nuclear Inspectors Better Tools without Revealing State Secrets](https://www.usenix.org/conference/enigma2021/presentation/negus)
- Secure multiparty computation applied to nuclear regulation... specifically measurements of particle emission. The parameters detect anomalies in private input data.
- CypherCiruit garbled circuit implementation
- Spoofing input data "solved" by tamperevident hardware

### [Gone, But Not "Forgotten"—Technical & Practical Challenges In Operationalizing Modern Privacy Rights](https://www.usenix.org/conference/enigma2021/presentation/huang)
- Abstract identifiers above the layer the stores them in different dbs, then replace all at once
- Regular privacy reviews as part of product planning
- Downstream derived PII included

### [Implementing Differential Privacy for the 2020 Census](https://www.usenix.org/conference/enigma2021/presentation/garfinkel)
- Direct output of DP releases are not useful at the scale of microdata, releases cannot be frequent, and data are synthetic ... all disappointing users
- DP for 14 years, no common adoption yet
- Expensive to compare accuracy/privacy tradeoffs for epsilon as requires rerunning the model

### [Privacy, Measurably, Isn't Dead](https://www.usenix.org/conference/enigma2021/presentation/kelley) 
- [Fundamental ref](https://www.computer.org/csdl/proceedings-article/sp/2021/893400a473)
- Global expectation among 90,000 is for more privacy over the next ten years, though geographically divergent.
  - US/Ireland/France respondents indicate pessimism
  - China/Thailand/Nigeria optimistic
  - Did not define privacy in the tool
- Globally, responses are split on privacy excepts for law enforcement, though agree on defaulting to disallow access until suspected

### [Privacy and Security Nutrition Labels to Inform IoT Consumers](https://www.usenix.org/conference/enigma2021/presentation/emami-naeini) [Source](https://www.iotsecurityprivacy.org/downloads/Emami-Naeni_CHI19_ExploringPrivacy.pdf)
- [Tool is posted](https://www.iotsecurityprivacy.org)

### [Contact Tracing](https://www.usenix.org/conference/enigma2021/presentation/panel-contact-tracing) Panel
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

### [The State of 0-Day in-the-Wild Exploitation](https://www.usenix.org/conference/enigma2021/presentation/stone)
- 25% of detected 0day are reused bugs
- Patch and infer bugs from patches
- [Reference](https://googleprojectzero.blogspot.com/2021/02/deja-vu-lnerability.html)

### [The Practical Divide between Adversarial ML Research and Security Practice: A Red Team Perspective](https://www.usenix.org/conference/enigma2021/presentation/anderson) 
- [Source](https://github.com/mitre/advmlthreatmatrix/blob/master/pages/case-studies-page.md#microsoft---azure-service)
- ML security is an element of an attack tree on a bigger system
- ROE was to cause an availability problem by causing an integrity problem for a private model
- Recon with excessive access to training data and training source, served as basis for noisy neighbors
- Add to healthchecks: hash of training set, weights

### [Breaking Trust – Shades of Crisis Across an Insecure Software Supply Chain](https://www.usenix.org/conference/enigma2021/presentation/herr) 
- [Source](https://www.atlanticcouncil.org/resources/breaking-trust-the-dataset/)
- Supply chain always a problem
- Trend: SDKs compromised more than other years, more likely to be on dev dependencies than releases (but still also releases)

### ["I Thought I Was Being Strong with a Complicated Person": The Tales of Intimate Gender-Based Online Abuse in the Global South](https://www.usenix.org/conference/enigma2021/presentation/celi)
- Issue of digital literacy and right of access to accounts.
- Ref global research

### [Da Da: What Shark Conservation Teaches Us about Emotionality and Effective Communication Strategies for Security and Privacy](https://www.usenix.org/conference/enigma2021/presentation/ensign)
- Response to crises face pressure from the public impression of severity.
- "Emotionality" driving responses: military response

### [Netflix Comparative ProdSec Programs Panel]
- Threat intelligence most overrated for production security, then WAFs, CSP headers, static analysis, pentesting, bug bounties, and dynamic analysis
- As opposed to appsec people, communication skills, paved roads
- Tiering

### [Detecting Fake 4G LTE Base Stations in Real Time](https://www.usenix.org/conference/enigma2021/presentation/quintin)
- Cell site sims intercept pre-auth between a mobile and tower to catch identifiers 
- Content intterception not feasible on 4G, but mobile OS are currently vulnerable to downgrade to 2G
- [Reference paper from last year](https://www.eff.org/wp/gotta-catch-em-all-understanding-how-imsi-catchers-exploit-cell-networks)
- [Seaglass Project](https://seaglass.cs.washington.edu)
- [5G vulns](https://www.youtube.com/watch?v=Nk4ghKTvwfg)
- [Breaking LTE on Layer Two](https://ieeexplore.ieee.org/document/8835335)
- [X.509 PKI?](https://dl.acm.org/doi/10.1145/3317549.3323402)
- New work: [Crocodile Hunter Project](https://github.com/EFForg/crocodilehunter)

### [Designing Verifiable Health Solutions For Global Pandemic](https://www.usenix.org/conference/enigma2021/presentation/funk)
- Compliance with entry protocols is based on self-reporting today
- Central authoritty has longterm tracking/privacy concern
- Avoiding the issue is too expensive to too many
- Proving compliance requires identity verification and attaching a voucher of health from a test or vaccine
- Every policy checker receives a different pseudonym in the form of ephemeral id
- Attestation proof can be revoked centrally
- Exposure and isolation can be enforced by posture checking and issuing new vouchers
- Specific extension of [verified credentials](https://www.w3.org/TR/vc-data-model/)

### [Contact Tracing Apps: Engineering Privacy in Quicksand](https://www.usenix.org/conference/enigma2021/presentation/troncoso)
- Decentralized revisions to exposure notification API, resulting in one-day faster notification
- Contact tracing maintains id and proximity data on the mobile device.
- Only centralized upload is a positive diagnosis, though caveat of web telemetry
- [Source repo](https://github.com/DP-3T/documents)
- [Swiss law requires reproducible builds](https://www.fedlex.admin.ch/eli/cc/2020/468/en#art_14)
- [Netherlands app data](https://www.coronamelder.nl/media/Factsheet_Corona_latest.pdf) show higher testing of asymtomatic people because of app notification
- [SwissCovid adoption](https://www.experimental.bfs.admin.ch/expstat/en/home/innovative-methods/swisscovid-app-monitoring.html)

### [Building E2EE and User Identity](https://www.usenix.org/conference/enigma2021/presentation/mou)
- Without end-to-end, the intermediary server holds the "meeting key"
- EE means the meeting content is as secure as the least secure participant
- Each client holds a private key and posts an ephemeral public key to the server. The meeting leader keys sessions for each client.
- Meeting keys are cycled when a participant joins or leaves, but is throttled by 15 seconds
- Deployed as small library the clients call to separate key management from the client
- Next extension is a public (to Zoom) tree of user identity
- [Source paper](https://github.com/zoom/zoom-e2e-whitepaper)

### [Quantifying Memory Unsafety and Reactions to It](https://www.usenix.org/conference/enigma2021/presentation/gaynor)
- [Account takeover has 0% success rate with webauthn](https://security.googleblog.com/2019/05/new-research-how-effective-is-basic.html) because of origin binding
- Memory safety can be done manually for simple systems. [Complex systems, not so](https://how.complexsystems.fail)
- Mega resources spent to mitigate memory handling bugs that already exist
- Identify high leverage places, kernel modules, sandboxes
- Reinterpreter projects
  - [cxx](https://github.com/dtolnay/cxx)
  - [autocxx](https://github.com/google/autocxx)
  - [bindgen](https://github.com/rust-lang/rust-bindgen)
  - [c2rust](https://github.com/immunant/c2rust)

### [The Limits of Sandboxing and Next Steps ](https://www.usenix.org/conference/enigma2021/presentation/palmer)
- [Chrome sandbox](https://chromium.googlesource.com/chromium/src/+/master/docs/design/sandbox.md#Design-principles) has communication between the browser process and renderer processes. 
- 69% of high+ severity Chromium bugs are due to memory unsafety
- Chromium renderers share network, storage access, and GPU processes due to the resource overhead of new processes on Windows (due to cheap threads being unsafe) and Android (due to inclusion of start resources and registration of child procs).
- Memory safe retrofits: 
  - semi-garbage collection (MiracleScan)
  - smaller pointers (MiraclePtr)
- "Build for webasm" target makes sandboxed crossplatform object [Firefox ref](https://hacks.mozilla.org/2020/02/securing-firefox-with-webassembly/)
- Cross-site IPC Chromium are security team change reviewed manually

### [Online Rumors, Misinformation and Disinformation: The Perfect Storm of COVID-19 and Election2020](https://www.usenix.org/conference/enigma2021/presentation/starbird)
- Collective sensemaking... feedback loop between large and small accounts
- Labeling is open to interpretation and can be an invitation to deeper misinformation

### [Computational Methods to Understand and Mitigate Online Aggression](https://www.usenix.org/conference/enigma2021/presentation/stringhini)
- Presenter raided through misidentification
- Raids synchronized between world readable services
- Applied to zoombombing... 
  - 74% of raids go to online classes and 70% are initiated by insiders and current mitigations are ineffective against insiders... 
  - Implications for join link control

### [Does Your Threat Model Consider Country and Culture? A Case Study of Brazilian Internet Banking Security to Show That It Should!](https://www.usenix.org/conference/enigma2021/presentation/botacin)
- Brazil computerized the banking system early due to an inflationary period
  - Spoofed thick client applications followed, using cultural cues to hide
  - Rewriting routing data in boleto transfers

