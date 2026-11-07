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

#custom-title("Education")[
  #education-heading(
    "Master's",
    "Computer Science",
    "University of Porto (FCUP)",
    datetime(year: 2025, month: 9, day: 11),
    "Present",
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
    "Master's Thesis",
    "",
    datetime(year: 2026, month: 7, day: 10),
    "Present",
    inline: true,
  )[
    - Extending session types to track *cryptographic resource usage*, rejecting protocol misuse at compile-time.
    - Formalizing the extension with a *soundness proof* and integrating it into the FreeST compiler (Haskell).
    - Built a *Kademlia DHT in FreeST* and a syntax highlighting extension for the Zed editor.
  ]
]

#custom-title("Experience")[

  /* Work */

  //   #work-heading(
  //     "Euronext",
  //     "AI DevOps Trainee",
  //     "",
  //     datetime(year: 2026, month: 11, day: 16),
  //     "Present",
  //     inline: true,
  //   )[
  //     - Building *AI agents* that autonomously perform DevOps tasks, integrated via *REST APIs and MCP servers*.
  //     - Maintaining *pipelines and platform infrastructure* serving company-wide data products and AI workloads.
  //     - Monitoring, testing and troubleshooting *AI solutions in production*.
  //   ]


  /* Startup */

  #work-heading(
    "Murph",
    "Co-founder & Lead Engineer",
    "", // stack hidden; was: "Gitoxide, Ed25519, IPLD"
    datetime(year: 2026, month: 7, day: 5),
    "Present",
    inline: true,
  )[
    - Co-founded a *3-person startup* (pre-launch) and wrote most of the codebase as lead engineer and architect.
    - Built a platform merging *version control, project management and CI*, used through a VSCode extension.
    - Used *typestate* so a change can only reach main after passing verification and human review.
    - Designed *signed approvals*, tiered authority for agents and humans and a tamper-evident history.
    - Built a Git layer with *compare-and-swap* writes, so agents and verification run in parallel worktrees.
    - Implemented *crash-safe persistence* from Git with an atomic checkpoint, caching only what is needed.
  ]
]

#custom-title("Coursework")[

  /* Blockchain */

  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security",
    grade: "19/20",
    stack: "Rust, Tokio, libp2p",
  )[
    - Researched the state of the art of Bitcoin, Ethereum and Solana, and churn and attack literature.
    - Built a network overlay for peer discovery on top of *Kademlia* (Ethereum's network protocol).
    - Designed a *Proof-of-Work blockchain* with BLAKE2b, Ed25519, Merkle trees and longest-chain consensus.
    - Created an auction client that uses the chain as a public ledger for recording and verifying bids.
    - Simulated bootstrap, honest and malicious nodes in Docker to study adversarial behaviour.
  ]

  /* Distributed Systems */

  #project-heading(
    "Distributed Protocols",
    course: "Distributed Systems",
    grade: "19/20",
    stack: "Rust, Tokio, Tonic",
  )[
    - #link("https://github.com/rodrigoaraujo9/tom-rs")[*Totally ordered multicast*] with Lamport clocks, hardened against reused, backdated and far-future timestamps.
    - #link("https://github.com/rodrigoaraujo9/ring-tonic")[*Token-ring mutual exclusion*] with failure detection and automatic ring healing.
    - #link("https://github.com/rodrigoaraujo9/monkey2monkey")[*Push-pull gossip*] with exponential anti-entropy for state convergence.
  ]

  /* Databases */

  #project-heading(
    "Portuguese Elections Data Platform",
    project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
    course: "Advanced Topics in Databases",
    grade: "18/20",
    stack: "PostgreSQL, Python, OCaml",
  )[
    - Built an *ETL pipeline* normalizing 8 official elections from inconsistent government spreadsheets.
    - Reconciled results automatically against official totals (votes, turnout, seats), with coherence checks.
    - Recomputed *D'Hondt* seats in SQL as a cross-check, with triggers for data ingestion.
    - Designed a *star-schema warehouse* with cube/rollup, window functions and drill-down to 3,000+ parishes.
    - Served vote-swing analytics and PostGIS maps through an *OCaml* API to a Bonsai UI.
  ]

  /* Java */

  // #project-heading(
  //   "Concurrent Chat Server",
  //   project-url: "https://github.com/rodrigoaraujo9/parallel-systems-and-concurrent-chat/tree/main/assign2",
  //   course: "Parallel and Distributed Systems",
  //   grade: "18/20",
  //   stack: "Java",
  // )[
  //   - Built a multi-threaded chat server in Java, handling each client on a *virtual thread*.
  //   - Prevented *race conditions* with a global read-write lock plus dedicated locks for heartbeats and acks.
  //   - Detected stale clients with *heartbeats* and tracked message *acknowledgments* with timeouts.
  //   - Added an *LLM bot* (Ollama) to chat rooms, answering on separate threads so chat never blocks.
  //   - Secured login with *PBKDF2* hashing, session tokens and IP-based *rate limiting*.
  // ]

  /* AI */

  // #project-heading(
  //   "UFC Fight Outcome Prediction",
  //   project-url: "https://github.com/rodrigoaraujo9/ufc-fight-outcome-predictor",
  //   course: "Artificial Intelligence",
  //   grade: "20/20",
  //   stack: "Python, scikit-learn, Streamlit",
  // )[
  //   - Built a *probabilistic classifier* for fight outcomes on 30+ engineered features, with feature selection.
  //   - Benchmarked 5 models with cross-validation and overfitting gates, merging survivors into a *voting ensemble*.
  // ]

  // TODO: missing hospital scheduler
]


#custom-title("Achievements and Awards")[
  #certification-heading(
    "Top 10 of 130 Startups, Fall 2026 Academia Cohort with Murph",
    datetime(year: 2026, month: 10, day: 28),
    stack: ("Unicorn Factory Lisboa", "https://unicornfactorylisboa.com/"),
  )[]

  #certification-heading(
    "2nd Place, IEEE RetroJam (48-hour game in Rust)",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[]

  #certification-heading(
    "Participation in RoboCup 2016",
    datetime(year: 2016, month: 6, day: 1),
    stack: ("RoboCup Federation", "https://2016.robocup.org/web/index-2.html"),
  )[]

  #certification-heading(
    "1st Place in the National Robotics Championship",
    datetime(year: 2016, month: 5, day: 1),
    stack: ("Instituto Politécnico de Bragança", "https://robotica2016.ipb.pt/indexpt.html"),
  )[]

  // #certification-heading(
  //   "4th Place Nationally in Canguru Matemático (27,505 participants)",
  //   datetime(year: 2016, month: 3, day: 1),
  //   stack: ("Canguru Matemático sem Fronteiras", "https://canguru.mat.uc.pt/"),
  // )[]
]


#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Rust, Java, Python, C/C++, SQL, Haskell
    - *Distributed Systems & Cryptography:* Tokio, libp2p, gRPC, Ed25519, Blake2b, Merkle Trees
    - *Data & Infrastructure:* PostgreSQL, pandas, NumPy, scikit-learn, FastAPI, Docker, Terraform, Git, UNIX/Linux
    - *Web:* React, Dioxus, Bonsai, Dream, HTML5, CSS
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
