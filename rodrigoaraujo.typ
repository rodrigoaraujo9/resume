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

#custom-title("Experience")[

  /* Work */



  /* Startup */

  #work-heading(
    "Murph",
    "Co-founder & Lead Engineer",
    "Rust, gitoxide, gRPC, Ed25519, IPLD",
    datetime(year: 2026, month: 7, day: 5),
    "Present",
    inline: true,
  )[
    - Co-founded a *3-person startup* (pre-launch) and wrote most of the codebase.
    - Built a platform where *AI agents and humans* ship changes together, merging version control, tasks and CI.
    - Encoded the merge pipeline as *Rust typestates*, so no change reaches main without verification and review.
    - Designed *Ed25519-signed approvals*, tiered authority for agents and humans and a tamper-evident history.
    - Built a Git layer with *compare-and-swap* ref updates, so agents and verification run in parallel worktrees.
    - Implemented *crash-safe persistence* that recovers state from Git via atomic checkpoints.
    - Served reads through a *byte-weighted LRU cache* of content-addressed Git objects, needing no invalidation.
  ]

  // Before you start (Nov 16), set the role to "Incoming AI DevOps Trainee".
  // Add bullets only for work you have actually done there.
  #work-heading(
    link("https://www.euronext.com/")[Euronext],
    "AI DevOps Trainee",
    "Group Data Delivery",
    datetime(year: 2026, month: 11, day: 16),
    "Present",
    inline: true,
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

#custom-title("Projects")[

  /* Blockchain */

  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security",
    grade: "19/20",
    stack: "Rust, Tokio, libp2p",
  )[
    - Surveyed Bitcoin, Ethereum, Solana and *churn and attack research* to guide network and consensus design.
    - Built a peer-to-peer overlay on a *Kademlia DHT* (as in Ethereum's discovery layer) for peer discovery.
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
    - Built an *ETL pipeline* normalizing 8 elections, reconciled against official totals and *D'Hondt* recomputed in SQL.
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
    [#link(
      "https://github.com/rodrigoaraujo9/sisyphus-retrojam-2025",
    )[2nd Place, IEEE RetroJam 2025 (48-hour game in Rust)]],
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[]

  #certification-heading(
    [#link("https://robotica2016.ipb.pt/indexpt.html")[1st Place in the National Robotics Championship]]
      + ", "
      + [#link("https://2016.robocup.org/web/index-2.html")[RoboCup 2016 Participant]],
    datetime(year: 2016, month: 5, day: 1),
    stack: ("UPB", "https://unipb.pt/pt"),
  )[]

  // #certification-heading(
  //   "4th Place Nationally in Canguru Matemático (27,505 participants)",
  //   datetime(year: 2016, month: 3, day: 1),
  //   stack: ("Canguru Matemático sem Fronteiras", "https://canguru.mat.uc.pt/"),
  // )[]
]


#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Rust, Haskell, OCaml, C/C++, Java, Python, SQL
    - *Distributed Systems & Cryptography:* Tokio, libp2p, Kademlia, gRPC, gitoxide, Ed25519, BLAKE2b, Merkle Trees
    - *Data & Infrastructure:* PostgreSQL, PostGIS, FastAPI, Docker, Terraform, Git, UNIX/Linux
    - *Web:* React, Dioxus, Bonsai, Dream, HTML5, CSS
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
