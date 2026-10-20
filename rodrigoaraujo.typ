#import "resume.typ": *

#let name = "Rodrigo Gomes de Araújo"
#let phone = "(+351) 914 574 743"
#let email = "contact@rodrigoaraujo.pt"
#let github = "rodrigoaraujo9"
#let linkedin = "rodrigoaraujo9"
#let personal-site = "rodrigoaraujo.pt"

#show: resume.with(
  top-margin: 0.45in,
  font: "New Computer Modern",
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github,
)

// #custom-title("Summary")[
//   *MSc Computer Science* student (graduating *July 2027*) building systems where *correctness* is non-negotiable, across distributed systems, applied cryptography and data. *Co-founder and lead engineer* of Tinker, a Rust devtools startup, and thesis on compile-time guarantees for cryptographic protocols. Experienced with *Rust*, peer-to-peer networking and verified data pipelines. Based in Porto and *open to relocation or remote work*.
// ]

#custom-title("Education")[
  #education-heading(
    "Master's",
    "Computer Science",
    "University of Porto (FCUP)",
    datetime(year: 2025, month: 9, day: 11),
    "Present (Jul 2027)",
    degree-url: "https://sigarra.up.pt/fcup/pt/cur_geral.cur_view?pv_ano_lectivo=2025&pv_curso_id=876&pv_origem=CAND",
    institution-url: "https://www.up.pt/fcup/en/",
  )[]
  #education-heading(
    "Bachelor's",
    "Computer Science and Engineering",
    "University of Porto (FEUP)",
    datetime(year: 2022, month: 9, day: 11),
    datetime(year: 2025, month: 7, day: 11),
    degree-url: "https://sigarra.up.pt/feup/pt/cur_geral.cur_view?pv_curso_id=22841",
    institution-url: "https://www.up.pt/feup/en/",
  )[]
]

#custom-title("Research")[
  #work-heading(
    "CaST (Cryptographically-aware Session Types)",
    "Master's Thesis · Advisors: Pedro Ângelo, Bernardo Portela",
    "FreeST, Haskell, Type Systems, Applied Cryptography",
    datetime(year: 2026, month: 7, day: 10),
    "Present (Jul 2027)",
  )[
    - Extending session types to capture *cryptographic resource usage*, so that misuse in protocols is rejected at compile-time.
    - Formalizing the extension with a *soundness proof*, integrating it into the FreeST compiler and exploring applications in *smart contracts* and protocol specification.
    - Built a *Kademlia DHT in FreeST* and the synthax highlighting extension for Zed.
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Tinker (Devtools Startup)",
    "Co-founder & Lead Engineer",
    "Rust, Gitoxide, Ed25519, IPLD/DAG-CBOR, Crlu, Serde",
    datetime(year: 2026, month: 7, day: 5), // TODO: real start date
    "Present",
  )[
    - Co-founded and lead a *3-person startup*. *Primary author of the codebase* and owner of the architecture. Tinker merges *version control, project management and CI* into one system.
    - Designed the *security and trust model*. *Ed25519-signed approvals* bound to the exact action, *tiered authority* for agents and humans and a *tamper-evident history* linking every change in production to its spec, verification and approval.
    - Fully built in *Rust*, with the change lifecycle enforced by *typestate* and *deterministic, concurrent verification* of immutable versions over a Git underlay.
    // - *Fits how teams already work*, from everyday development to critical releases or *AI agents implementing in parallel*. Each change gets the level of authority, verification and review it needs, and the platform enforces it. The project board tracks real progress on its own, with no manual updates.
  ]
]

#custom-title("Coursework")[
  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security · 19/20",
    stack: "Rust, Tokio, LibP2P, Docker, Blake2b, Ed25519",
  )[
    - *Research on the state of the art* of Bitcoin, Ethereum and Solana, Kademlia and churn/attack literature before building.
    - *Kademlia DHT* overlay for decentralized network construction, *GossipSub* block propagation, *chain synchronization and fork resolution*.
    - PoW chain with *Blake2b hashing*, *Ed25519 signatures* and *Merkle Trees* for transaction validation, used as a public ledger for an *auction client*.
    - Docker *adversarial network simulation* with bootstrap, well behaved and *malicious nodes*.
  ]

  #project-heading(
    "Distributed Protocols",
    course: "Distributed Systems · 19/20",
    stack: "Rust, Tokio, gRPC (Tonic), Docker",
  )[
    - #link("https://github.com/rodrigoaraujo9/tom-rs")[*Totally ordered multicast*] with *Lamport clocks*, defended against timestamp reuse, backdating and far-future attacks.
    - #link("https://github.com/rodrigoaraujo9/ring-tonic")[*Token ring mutual exclusion*] with *failure detection* and automatic ring healing.
    - #link("https://github.com/rodrigoaraujo9/monkey2monkey")[*Push-pull gossip*] with exponential *anti-entropy* for state convergence.
  ]

  // #project-heading(
  //   "UFC Fight Outcome Prediction",
  //   project-url: "https://github.com/rodrigoaraujo9/ufc-fight-outcome-predictor",
  //   course: "Artificial Intelligence · 20/20",
  //   stack: "Python, scikit-learn, pandas, NumPy, Streamlit",
  // )[
  //   - *Probabilistic classifier* for fight outcomes built on *30+ engineered features* (pairwise differences, ratios, normalized gaps, experience-weighted win rates) with *robust scaling* and *feature selection*.
  //   - Benchmarked *5 models* (Random Forest, Gradient Boosting, SVM, MLP, Logistic Regression) with *5-fold cross-validation* and *overfitting gates*. Models that pass are combined into a *soft-voting ensemble*.
  // ]

  #project-heading(
    "Portuguese Elections Data Platform",
    project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
    course: "Advanced Topics in Databases · 18/20",
    stack: "PostgreSQL, PostGIS, Python, OCaml",
  )[
    - *ETL pipeline* normalizing *10 years* of official results (8 elections) from *inconsistent* government spreadsheets: layout detection, *entity resolution* of parties, *idempotent* loads with *SHA-256 provenance*.
    - *Automated reconciliation* against official totals (votes, turnout, seats) and *invariant checks* that must return zero. Triggers reject bad writes and *D'Hondt* seats are recomputed in SQL as a cross-check.
    - *Star-schema warehouse* with *CUBE/ROLLUP*, *window functions* and *recursive drill-down* to 3,000+ parishes. Vote-swing analytics and *in-database PostGIS* maps served by an *OCaml* API to a *Bonsai* UI.
  ]
]

#custom-title("Awards")[
  #certification-heading(
    "2nd Place in IEEE RetroJam 2025 (48h game from scratch, Rust)",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[]
  // #certification-heading(
  //   "4th Place Nationally in Canguru Matemático (27,505 participants)",
  //   datetime(year: 2016, month: 3, day: 1),
  //   stack: ("Canguru Matemático sem Fronteiras", "https://canguru.mat.uc.pt/"),
  // )[]

  #certification-heading(
    "1st Place National Robotics Championship · RoboCup 2016 (Leipzig)",
    datetime(year: 2016, month: 5, day: 1),
    stack: ("Instituto Politécnico de Bragança", "https://robotica2016.ipb.pt/indexpt.html"),
  )[]

  // #certification-heading(
  //   "Academic Merit Awards",
  //   (2020, 2021, 2022),
  // )[]


  // - Game from scratch in 48 hours (Rust and Raylib), learning how to *reduce a problem to its core requirements*.

  // Merged into the robotics line
  // #certification-heading(
  //   "Participation in RoboCup 2016",
  //   datetime(year: 2016, month: 6, day: 1),
  //   stack: ("RoboCup Federation", "https://2016.robocup.org/web/index-2.html"),
  // )[]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Rust, Python, C/C++, Java, SQL, Haskell, OCaml, TypeScript
    - *Distributed Systems & Cryptography:* Tokio, libp2p (Kademlia, GossipSub), gRPC, Ed25519, Blake2b, Merkle Trees
    - *Data & Infrastructure:* PostgreSQL, PostGIS, pandas, NumPy, scikit-learn, FastAPI, Docker, Terraform, Git, UNIX/Linux
    - *Web:* React, Dioxus, Bonsai, Dream, HTML5, CSS
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
