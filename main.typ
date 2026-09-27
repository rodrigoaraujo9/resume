#import "resume.typ": *

#let name = "Rodrigo Gomes de Araújo"
#let phone = "(+351) 914 574 743"
#let email = "contact@rodrigoaraujo.pt"
#let github = "rodrigoaraujo9"
#let linkedin = "rodrigoaraujo9"
#let personal-site = "rodrigoaraujo.pt"

#show: resume.with(
  top-margin: 0.45in,
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

#custom-title("Profile")[
  *MSc Computer Science* student graduating in *July 2027*, interested in
  *financial systems* and the reliable and secure software that powers them. Experience in *Rust, Python and
  PostgreSQL*, with projects spanning a decentralized transaction ledger,
  an analytical data platform and machine-learning prediction. Thesis work on
  protocols that are *correct and secure by construction*, useful for financial
  transaction workflows. Rigorous, reliable and comfortable building systems
  where correctness matters. Based in Porto and available to work in Lisbon or Remote.
]

#custom-title("Education")[
  #education-heading(
    "Master's",
    "Computer Science",
    "University of Porto (FCUP)",
    datetime(year: 2025, month: 9, day: 11),
    "Present (Jul 2027)",
    degree-url: "https://sigarra.up.pt/fcup/pt/cur_geral.cur_view?pv_ano_lectivo=2021&pv_curso_id=876&pv_origem=CAND",
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
    "CaST: Cryptographically-aware Session Types",
    "Master's Thesis",
    "FreeST, Haskell, Type Systems, Applied Cryptography",
    datetime(year: 2026, month: 7, day: 10),
    "Present (Jul 2027)",
  )[
    - Researching how to make communication protocols *correct and secure by
      construction*, so invalid cryptographic operations are rejected before deployment.
    - Developing formal models and compiler support for tracking authorization
      and cryptographic evidence across nested protocols, with applications to
      *financial transaction and smart-contract workflows*.
  ]
]

#custom-title("Projects")[
  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security · 19/20",
    stack: "Rust, Tokio, LibP2P, Docker, Blake2b, Ed25519",
  )[
    - Built a decentralized *public ledger* for auctions, where signed
      transactions are validated by network participants and recorded in an
      immutable chain.
    - Implemented *proof-of-work consensus*, transaction validation,
      Merkle-tree block commitments and Kademlia peer discovery.
    - Automated multi-node Docker simulations with honest and malicious
      participants, developing skills in distributed trust, fault resilience and
      adversarial testing.
  ]

  #project-heading(
    "Portuguese Elections Analytics Platform",
    project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
    course: "Advanced Topics in Databases · 18/20",
    stack: "PostgreSQL, PostGIS, Python, SQL, OCaml",
  )[
    - Built an end-to-end analytical platform for Portuguese election results,
      from *Python ETL* of official Excel data into PostgreSQL to an interactive
      visual application.
    - Designed a *star-schema data warehouse* for votes, turnout and seats,
      with spatial data and indexes supporting analysis from national to parish level.
    - Implemented analytical SQL for *trend, vote-swing, turnout and
      party-performance analysis*, using roll-ups, `CUBE`, window functions and
      geospatial queries.
  ]

  #project-heading(
    "UFC Fight Outcome Prediction System",
    project-url: "https://github.com/rodrigoaraujo9/ufc-fight-outcome-predictor",
    course: "Artificial Intelligence · 20/20",
    stack: "Python, pandas, NumPy, scikit-learn, Streamlit",
  )[
    - Built an end-to-end machine-learning system to predict fight outcomes
      from historical data, engineering *30+ predictive features* from
      performance, experience and physical statistics.
    - Trained and evaluated *six models*. Logistic Regression, Random Forest,
      Gradient Boosting, SVM, Neural Network and a soft-voting ensemble, using
      five-fold cross-validation and explicit overfitting checks.
    - Built an interactive Streamlit application with probability estimates,
      model comparisons, feature analysis and visual reports.
  ]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Programming & Data:* Rust, Python, SQL, PostgreSQL, C/C++, Haskell, OCaml, Java
    - *Data & Systems:* Tokio, LibP2P, Tonic, pandas, NumPy, scikit-learn, PostGIS, Git, UNIX, Docker, Terraform, OpenMP
    - *Spoken Languages:* Portuguese (Native), English (B2 First, Cambridge), Spanish (Proficient)
  ]
]

#custom-title("Awards")[
  #certification-heading(
    "2nd Place in IEEE RetroJam 2025",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[
    - Built a game from scratch in 48 hours using Rust and Raylib.
  ]

  #certification-heading(
    "Academic Merit Awards",
    (2020, 2021, 2022),
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
]
