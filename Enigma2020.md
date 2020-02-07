USENIX Enigma 2020
=================

### [Encrypted Messaging](https://www.usenix.org/conference/enigma2020/presentation/encrypted-messaging) Panel

- Pfefferkorn: CALEA requires that telcos, broadband, VoIP, and "substantial replacements" be wiretappable.  Information Services are carved out from compliance because they disparate encryption standards, and the CALEA authors did not want them to create workarounds.
- Device companies have been attempted to be forced to assist with investigation through the All Writs Act, but requirements have not been settled. EARN IT Act of 2019 may require messaging services to allow access to communications of the users.
- Blaze: Cryptowars one and two. First, privacy and security advocates were asking for change; in the second, advocates want the status quo. 
- The FBI threat model for future communications, that generated the design of Clipper, were proven false: ability to secure email, dominance of voice communications, etc. Status quo is the only tenable position because a forecast is impossible.
- Weitzner: Other nations are requiring both access and platform responsibility for sanitization and detecting criminal use. UK Investigative Power Act of 2016, Australian Assistance and Access Bill of 2018, for examples. Both have bureaucratic process for requiring compliance, though all require secrecy, and all require providers to not embed "systemic" vulnerabilities in their products.
- Callas: Emerging world: all communications will be with E2E, and the difficult problems will be in managing communities, blocking unwanted contact, and authenticating identities.

### Other People's Code
#### [Securing the Software Supply Chain](https://www.usenix.org/conference/enigma2020/presentation/valsorda)

- Provenance (universal name and permanent version), Availability (making sure versions can be incorporated when needed, Go uses a proxy service that can be defined at build time and uses cached copies of all modules), Integrity (no trust in proxies, central entities, first use, or developer key management).
- Go uses a checksum database- the go client uses a Merkle tree for accountability of an append only database of checksums for all modules. The database is served as tiles that can be cached locally.
- Go prefers to copy rather than trust dependency sources
See: https://research.swtch.com/deps

#### [Third-Party Integrations: Friend or Foe?](https://www.usenix.org/conference/enigma2020/presentation/harvey)

- Red team compromises application dependency to get application to call out to fronted domain with a domain name similar to one the organization uses. Internal security whitelists the domain name and allows egress.
- Harvey's solution: whitelists on outbound proxies that are tied to specific vendors, which are set up after the vendor review process.

#### [Stack Overflow: A Story of Two Security Tales](https://www.usenix.org/conference/enigma2020/presentation/fischer)

- Security expert found answer to an Android app security feature on SO…. With a remote RCE that had been integrated into apps with 200M users… Research team tracked QA site solutions to published apps. They found that insecure suggestions are prevalent on SO 30% of the time… and have been incorporated into 15% of Google Play published apps. (Secure solutions, 70%, are incorporated into 6% of apps). 
- Fisher believes people use the insecure options because they make the need work in the most general cases and get promoted by more users. He integrated a nudge system in a controlled study on the cryptographic API subsections of SO that warned users about vulnerabilities identified in example code and directed them to more specific solutions instead. In controlled testing, 60% of non-nudged participants implemented a solution securely whereas 77% of nudged developers implemented a secure solution. SO believes the community should fix vulnerable answers themselves.

### Fundamentals and Infrastructure
#### [Catch Me If You Can!—Detecting Sandbox Evasion Techniques](https://www.usenix.org/conference/enigma2020/presentation/guibernau)
- Author analyzes malware that checks if it runs on virtualization and runs differently based on its logic. Sandbox detection is based on system characteristics like core count or thermal readings, or 
logical parameters like virtualized MAC addrs or registry keys unique to virtual machines, kernel drivers, or time-based detections like long system times, or userspace items like installed applications, user interaction, or network characteristics like domain connections to other hosts. In other words, use multiple profiles for malware analysis and avoid generic ones.

#### [BeyondProd: The Origin of Cloud-Native Security at Google](https://www.usenix.org/conference/enigma2020/presentation/baker)
- Google delineates which configurations are available to developers and which are the role of infrastructure… all workloads are run as containers. Google enforces the cloud native model on its developers, while running the infrastructure separately. Google's builds infra signs the results from making a container, which is validated when deployed.
- https://cloud.google.com/security/beyondprod/
- https://cloud.google.com/security/encryption-in-transit/application-layer-transport-security/
- https://cloud.google.com/security/binary-authorization-for-borg
- https://cloud.google.com/security/encryption-in-transit/application-layer-transport-security/
- https://services.google.com/fh/files/misc/anthos_an_opportunity_to_modernize_application_security_white_paper.pdf

#### [Bringing Usable Crypto to 7 Million Developers](https://www.usenix.org/conference/enigma2020/presentation/white)
- Confusion in the industry about what level database encryption works… at disk or network level, or within table space? The problem: processes on host machines can always see keys in the clear. "Pinky Promise as a Service". End-to-end, client-side encryption inserts encrypted data into the database from the application or client. Encrypted fields in the database render fields unsearchable. 
- MongoDB client-side field-level encryption. https://docs.mongodb.com/manual/core/security-client-side-encryption/
- Keys are scoped per-field or per-document, and can therefore be unique to a user. Distributed systems store encrypted keys across the network. The application server with a session has access to the keys used to encrypt the database fields. 
- Searchable symmetric encryption http://esl.cs.brown.edu/blog/how-to-search-on-encrypted-data-searchable-symmetric-encryption-part-5/

#### [Pre-Authentication Messages as a Common Root Cause of Cell Network Attacks](https://www.usenix.org/conference/enigma2020/presentation/nasser)
- IMSI-catcher is a cell base station spoofer. A mobile devices does not authenticate the base station and will report its IMSI when requested. Most likely attacks are location tracking, denial of service, and communications interception or injecting comms. Malicious IMSI-catchers are deployed in DC, and are likely in other US cities, but handling them has not been prioritized by the FCC/FBI.
- https://dl.acm.org/doi/10.1145/3317549.3323402

### Emerging Topics
#### [Virtual Reality Brings Real Risks: Are We Ready?](https://www.usenix.org/conference/enigma2020/presentation/pearlman)

#### [What Does It Mean for Machine Learning to Be Trustworthy?](https://www.usenix.org/conference/enigma2020/presentation/papernot)
- DP requires that an observer cannot determine if a single sample is within a training set. 
- A model can be trained to fit a training set that includes extremes, but still correctly identifies them. These extremes are at risk to be identified, so parameters must be tuned to make the model less fit to the training set, but also preserve privacy.
- Governance applies to models in the case that a training subject must be removed from a training set. This is machine unlearning. Privacy techniques operate on the extremes of the data set whereas overfitting corrections operate in the general case, so DP corrects for overfitting while correcting for overfitting does not preserve privacy.
- https://arxiv.org/abs/1910.13427
- https://cleverhans.io
- [Extracting models](https://www.usenix.org/conference/usenixsecurity20/presentation/chandrasekaran)

#### [How to Build Realistic Machine Learning Systems for Security?](https://www.usenix.org/conference/enigma2020/presentation/afroz)
- The assumption of ML in malware detection is that the model must be able to detect anomalous cases, unseen in training data. Afroz uses VirusTotal AV vendor labels to train to build a classifier. Cuckoo open source dynamic malware analysis. Not all detection techniques can result in malware that is dangerous to the users. Some evasion techniques morph the malware binary (problem space); some attack the feature vector of the malware (feature space). When malware evades by altering the problem space, the binary may fail or not perform with intended maliciousness.

### [Browser Privacy: Opportunities and Tradeoffs](https://www.usenix.org/conference/enigma2020/presentation/privacy-wars) Panel
- MSFT Edge "re-platformed" on Chromium, adding privacy features list blacklisting tracker domains. Firefox containers separate known tracker domains from other browser tabs. Firefox strips unique trackers from sites when they discover them. Chrome claims that no single entity controls the web and that the reason so much media is on the web is because investment has moved there under an advertising model. Chrome controversial statement: Google will build advertising profiles themselves and disallow tracking altogether. Brave rewrites a lot of Chrome browser extensions like ad block list enforcers, TOR mode, HTTPS Everywhere, stripping third-party referrer headers, and hard coding exceptions.
- Browsers are currently in a privacy-first competition. Chrome now has so much scale that they cannot rapidly change. Chrome wants to prevent users from being pushed off the open web to app environments/walled gardens without transparency. 
- Browsers cannot default to requesting with blandness because a feature would have to be rolled out across all browser types.

### An Alternative Lens
#### [Data as a Social Science: Cultural Elements in Privacy and Security](https://www.usenix.org/conference/enigma2020/presentation/fernandez)
- Privacy norms are established by culture. Privacy terms can be analyzed by the language people use to talk about privacy. In Arabic, for example, the conversation around privacy is mostly about 'honor'. Fernandez recommends creating data blocks rather than privacy laws like GDPR.

#### [All Security Is Good(s): Design Guidance for Economics](https://www.usenix.org/conference/enigma2020/presentation/camp)
- BGP routes don't make physical sense due to private ownership of the physical infrastructure. Camp attempts to link BGP route hijacks to different crime theories, and identified hot spots for BGP route hijacks that correlate with low GDP geographies. It also turns out that some areas with network bottlenecks also have high rates of malicious BGP route publishing that could be done by nations attempting to capture data. Two proposed solutions: RPKI, cryptographically associates origin and network, and BPGSEC, which is requires authentication of public keys for published routes. BONGO is an implementation of BGP route pre-validation.

#### [Platform Data Privacy & Security Strategies for Public Interest Research](https://www.usenix.org/conference/enigma2020/presentation/buccini)
- The genesis of the project is the inability to validate the claims made by FB after election meddling.
- Facebook's Social Science One project uses a third party to validate an entity requesting access for research on FB users, but it failed. GDPR considers higher-order combinations of data that can be used to identify a subject. Legal departments of big tech did not have clarity on what is required by GDPR, and thus advised their clients. Differential Privacy is therefore disallowed because it is not an absolute anonymization.
- Buccini recommends a "HIPAA for public interest research on social data", including a safe harbor based on the intent of the researcher. Created Public Interest Research Alliance.

### Privacy Engineering
#### [How Anonymous Is My Anonymized Data?](https://www.usenix.org/conference/enigma2020/presentation/bishop)
- [AOL accidentally publicly posted](https://en.wikipedia.org/wiki/AOL_search_data_leak) an anonymized list of user search queries on a Friday night. By Monday morning a number of users had been identified in the data. 
- Before releasing anonymized data, it is vital to consider what can be inferred from the data anyway, and what the potential damage to the individual can be. There is no solution to responsible disclosure/reporting on methods of reidentifying data sets.

#### [Stop Failing. Start Building for Humanity.](https://www.usenix.org/conference/enigma2020/presentation/kissner)
- Kissner suggests building products designed not to the best spec, but to the spec that preserves privacy based on the threat model of the vulnerable users, such as encryption methods that do not standout during traffic analysis.

#### [Privacy at Speed: Privacy by Design for Agile Development at Uber](https://www.usenix.org/conference/enigma2020/presentation/bozdag)
- GDPR requires reasonable and appropriate measures. The measures/controls should be implemented in the SDLC, which can be difficult with Agile processes. Uber tags data with its classification and identifies anomalies when it moves to different places. Uber embeds privacy liaisons in engineering teams to help make decisions. Uber requires privacy reviews during feature development. The Uber SDLC will release versions that are noncompliant (except for some must-haves) and fix them after.

#### [The Browser Privacy Arms Race: Which Browsers Actually Protect Your Privacy?](https://www.usenix.org/conference/enigma2020/presentation/arrieta)
- Safari/Webkit - implemented ITP to restrict third party cookies to sites with validated user interaction.
- Brave/Firefox - lots of privacy  features added
- Tor browser
- Chrome - no DNT
- Edge - added DNT, possible extension compatibility
- Implement yellow lists to treat some sites with more behavior constraints
- If you can't implement privacy, maybe don't make a browser?
- The Internet should be opt-in
- Panopticlick… some privacy features can make users more fingerprintable

### Vulnerable Populations
#### [Public Records in the Digital Age: Can They Save Lives?](https://www.usenix.org/conference/enigma2020/presentation/kosmides)
- Connecting with strangers is easier than before and has resulted in violence against vulnerable more than before. Online whisper networks are fragile and have been silenced by lawsuits. Access to records of perpetrators is expensive and time consuming. Instant checkmate takes 30 minutes. Kosimdes set up a service that intakes public records, not just convictions, and makes them available for background checking and submission.

#### [Eyes in Your Child's Bedroom: Exploiting Child Data Risks with Smart Toys](https://www.usenix.org/conference/enigma2020/presentation/das)
- Toys are cheap IoT devices and can lack authentication or security controls that protect kids. Device hardware is overpowered but also under protected.

#### [Next-Generation SecureDrop: Protecting Journalists from Malware](https://www.usenix.org/conference/enigma2020/presentation/helsby)
- Current implementation hosts front and backend interfaces at the site of journalists. (see diagram)… Over two years they've encountered issues with cumbersome user around the airgap. Redesigned with Fedora/Qubes virtual stack. 
- Project inspired by: https://en.wikipedia.org/wiki/Jeffrey_Alexander_Sterling
- New version git repo: https://github.com/freedomofpress/securedrop/releases/tag/1.2.0

### [Disinformation](https://www.usenix.org/conference/enigma2020/presentation/disinformation) Panel
- DiResta was one of the authors of the Senate report on Russian propaganda in 2016. Propaganda has black/white/grey varieties. Echo chambers are now "bespoke realities". *all* political actors engage in disinformation because not doing so is considered ceding ground to opponents. Information Security has its own problematic relationship with social media/disinformation. Disinformation as a service is becoming an industry.
- Metrics for marketing/PR are entirely handwaving.
- The IRA, however, had 167M impressions, whereas the GRU had 14K. 
- Ad networks and buyers financed the misinformation. The speakers recommend regulation on the platforms and the PR firms for hire.

### Governing
#### [Trustworthy Elections](https://www.usenix.org/conference/enigma2020/presentation/dodds)
- Risk limiting audits are sampling of ballots randomly to prove the count is accurate as expected. Homomophic encryption can add integers in public without releasing the PII of the voters.
- [Dodds has an open source implementation of election verification](https://github.com/microsoft/electionguard-sdk-c-implementation)

#### [Internet Infrastructure Security: A Casualty of Laissez-Faire and Multistakeholderism?](https://www.usenix.org/conference/enigma2020/presentation/weissinger)
- The early networks escaped the lab before considerations for governing the naming and routing infrastructure until ICANN came up. ICANN committees spent the 1990s adding technical extensions to the routing/naming services, like DNSSEC. There are no provisions in ICANN contracts considering abuse, in fact, the contracts state that registrars cannot be required to remove abusers, and resultingly 50% of spamhaus blocklist is from registrars in the Comoros. Regulations require a global government and ICANN organizational funding that is not dependent on selling spam domains. 

#### [The State of the Stalkerware](https://www.usenix.org/conference/enigma2020/presentation/galperin)
- There is already lots of advice on account compromise for consumer accounts for partner abuse. There is also an industry of malware detection on devices (AV). Kaspersky started blocking and alerting stalkerware and reporting on its proliferation. MalwareBytes and Lookout also started alerting. A new Coalition Against Stalkerware has and agenda to advance with law enforcement.

#### [Cybercrime: Getting beyond Analog Cops and Digital Robbers](https://www.usenix.org/conference/enigma2020/presentation/eoyang)
- Eoyang separates the problem into four quadrants: System/Human vs. Defense/Offense. The system-offense quadrant is underdeveloped and needs political leadership.

### Preparing and Responding
#### [Adventures with Cybercrime Toolkits: Insights for Pragmatic Defense](https://www.usenix.org/conference/enigma2020/presentation/eshete)
- Exploit kits have a staged attack chain that ends with a call home for more instructions. Eshete argues that it is good to be proactive, but better to be pragmatic by including offensive and reactive tactics. Counter-offensive tactics are developing exploits on the kit infrastructure such as command injection or feeding garbage data.  Eshete advocates developing exploits, then handing off to "law enforcement".

#### [Reservist Model: Distributed Approach to Scaling Incident Response](https://www.usenix.org/conference/enigma2020/presentation/joshi)
- Netflix pre-assigned incident responders based on what resources were involved in the incident. They used historical data to create an incident forecast. Still, they had trouble meeting the intense months. They created a reserves force of prior incident response staff to handle the peaks. They broadcast incidents to reservists across the organization.

#### [The Abuse Uncertainty Principle, and Other Lessons Learned from Measuring Abuse on the Internet](https://www.usenix.org/conference/enigma2020/presentation/freeman)
- Measuring abuse has inconsistent units. FB prioritizes abuses by the severity of the outcome of an abusive incident. After prioritizing types of abuse, FB starting measuring incidents. To automate handling, they needed to label abuse incidents, which they considered to do with a rubric, with user reports, or with experts labelers. Labeling can be automated with clustering and detecting the anomalies that appear.  
- A measurement is no longer a good measurement when it becomes a target. A signal cannot be used for measure and enforcement, or you don't know which affect you're monitoring.

### Errata
- [Site Isolation in Chrome Browser](https://www.usenix.org/conference/usenixsecurity19/presentation/reis)
- [DP in Tensorflow](https://www.cleverhans.io/privacy/2019/03/26/machine-learning-with-differential-privacy-in-tensorflow.html)

