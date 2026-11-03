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
//   *MSc Computer Science* student (graduating *July 2027*) building systems where *correctness* is non-negotiable, across distributed systems, applied cryptography and data. *Co-founder and lead engineer* of Murph, a Rust devtools startup, and thesis on compile-time guarantees for cryptographic protocols. Experienced with *Rust*, peer-to-peer networking and verified data pipelines. Based in Porto and *open to relocation or remote work*.
// ]

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
    - Extending session types to capture *cryptographic resource usage* in protocols, to detect its misuse at compile-time.
    - Formalizing the extension with a *soundness proof*, integrating it into the FreeST compiler in *Haskell*.
    - Built a *Kademlia DHT in FreeST* and the *syntax highlighting extension* for Zed.
  ]
]

#custom-title("Experience")[
  #work-heading(
    "Murph",
    "Co-founder & Lead Engineer",
    "", // stack hidden; was: "Gitoxide, Ed25519, IPLD"
    datetime(year: 2026, month: 7, day: 5), // TODO: real start date
    "Present",
    inline: true,
  )[
    - Co-founded and lead a *3-person startup*. Primary author of the codebase and owner of the architecture.
    - Murph merges *version control, project management and CI* into one system behind a simple *VSCode extension*.
    - *Typestate* guarantees no change reaches main without *verification* and *human review*.
    - *Signed approvals* bound to the exact action, *tiered authority* for agents and humans and a *tamper-evident history*.
    - *Git underlay* with *compare-and-swap* writes, so verification and agents run *in parallel* in isolated worktrees without overwriting main.
    - Light runtime with *crash-safe persistence*. State is rebuilt from Git against an atomic checkpoint, caching only what each computation needs.
  ]
]

#custom-title("Coursework")[
  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security",
    grade: "19/20",
    stack: "Rust, Tokio, libp2p",
  )[
    - *Research on the state of the art* of Bitcoin, Ethereum and Solana and churn/attack literature.
    - Built a network overlay for peer discovery on top of *Kademlia* (Ethereum’s network protocol).
    - Designed a *Proof-of-Work blockchain* using BLAKE2b hashing, Ed25519 signatures, Merkle trees and Longest Chain Consensus.
    - Created an auction client that uses the chain as a public ledger for recording and verifying bids.
    - Simulated bootstrap, honest and malicious nodes in Docker to study adversarial behaviour.
  ]

  #project-heading(
    "Distributed Protocols",
    course: "Distributed Systems",
    grade: "19/20",
    stack: "Rust, Tokio, Tonic",
  )[
    - #link("https://github.com/rodrigoaraujo9/tom-rs")[*Totally ordered multicast*] with *Lamport clocks*, defended against timestamp reuse, backdating and far-future attacks.
    - #link("https://github.com/rodrigoaraujo9/ring-tonic")[*Token ring mutual exclusion*] with *failure detection* and automatic ring healing.
    - #link("https://github.com/rodrigoaraujo9/monkey2monkey")[*Push-pull gossip*] with exponential *anti-entropy* for state convergence.
  ]

  // #project-heading(
  //   "UFC Fight Outcome Prediction",
  //   project-url: "https://github.com/rodrigoaraujo9/ufc-fight-outcome-predictor",
  //   course: "Artificial Intelligence",
  //   grade: "20/20",
  //   stack: "Python, scikit-learn, Streamlit",
  // )[
  //   - *Probabilistic classifier* for fight outcomes built on *30+ engineered features* (pairwise differences, ratios, normalized gaps, experience-weighted win rates) with *robust scaling* and *feature selection*.
  //   - Benchmarked *5 models* (Random Forest, Gradient Boosting, SVM, MLP, Logistic Regression) with *5-fold cross-validation* and *overfitting gates*. Models that pass are combined into a *soft-voting ensemble*.
  // ]

  #project-heading(
    "Portuguese Elections Data Platform",
    project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
    course: "Advanced Topics in Databases",
    grade: "18/20",
    stack: "PostgreSQL, Python, OCaml",
  )[
    - *ETL pipeline* normalizing *8 official elections* from *inconsistent* government spreadsheets.
    - *Automated reconciliation* against official totals (votes, turnout, seats) and *coherence checks*.
    - Triggers for data ingestion and *D'Hondt* seats recomputed in SQL as a cross-check.
    - *Star-schema warehouse* with *cube/rollup*, *window functions* and *recursive drill-down* to 3,000+ parishes.
    - Vote-swing analytics and *PostGIS maps* served by an *OCaml* API to a *Bonsai* UI.
  ]
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
  // #certification-heading(
  //   "4th Place Nationally in Canguru Matemático (27,505 participants)",
  //   datetime(year: 2016, month: 3, day: 1),
  //   stack: ("Canguru Matemático sem Fronteiras", "https://canguru.mat.uc.pt/"),
  // )[]

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
