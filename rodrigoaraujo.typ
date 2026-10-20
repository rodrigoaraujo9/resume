#import "resume.typ": *

#show: resume.with(
  author-name: "Rodrigo Gomes de Araújo",
  phone: "+351 914 574 743",
  email: "contact@rodrigoaraujo.pt",
  website: "rodrigoaraujo.pt",
  linkedin-user-id: "rodrigoaraujo9",
  github-username: "rodrigoaraujo9",
  personal-info-font-size: 9.4pt,
)

#custom-title("Education")[
  #education-heading(
    "Master's",
    "Computer Science",
    "University of Porto (FCUP)",
    datetime(year: 2025, month: 9, day: 1),
    "Present (Jul 2027)",
  )[]
  #education-heading(
    "Bachelor's",
    "Computer Science and Engineering",
    "University of Porto (FEUP)",
    datetime(year: 2022, month: 9, day: 1),
    datetime(year: 2025, month: 7, day: 1),
  )[]
]

#custom-title("Experience")[
  #work-heading(
    "Co-founder & Lead Engineer",
    "Tinker (Devtools Startup)",
    "Rust, Git",
    datetime(year: 2026, month: 7, day: 1),
    "Present",
  )[
    - Co-founded and lead a 3-person startup. Primary author of the codebase and owner of the architecture. Tinker merges version control, project management and CI into one system.
    - Designed the trust model. Signed approvals bound to the exact action and a tamper-evident history linking every change in production to its spec, verification and approval.
  ]
]

#custom-title("Projects")[
  #project-heading(
    "Portuguese Elections Data Platform",
    course: "Advanced Topics in Databases · 18/20",
    stack: "Python, PostgreSQL, PostGIS, SQL",
    project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
  )[
    - ETL pipeline in Python normalizing 10 years of official results (8 elections) from inconsistent government spreadsheets. Layout detection, entity resolution of parties and idempotent loads with SHA-256 provenance.
    - Every load is reconciled against official totals (votes, turnout, seats) and invariant checks must return zero. Triggers reject bad writes and D'Hondt seats are recomputed in SQL as a cross-check.
    - Star-schema warehouse with CUBE/ROLLUP, window functions and drill-down to 3,000+ parishes.
  ]
  #project-heading(
    "Cloud-Native Hospital Backend",
    course: "Big Data and Cloud Computing",
    stack: "Python, Flask, Google Cloud, Artillery",
  )[
    - REST API on Google Cloud for patient records, admissions, media and patient–doctor questions, with access control enforced server-side.
    - Storage split by access pattern. Structured records in Firestore, binary files as blobs in Cloud Storage with only their metadata indexed and precomputed aggregates in dedicated cache collections.
    - Heavy aggregations moved to scheduled serverless functions with cached views, so derived endpoints respond as fast as plain reads.
  ]
  #project-heading(
    "UFC Fight Prediction",
    course: "Artificial Intelligence · 20/20",
    stack: "Python",
    project-url: "https://github.com/rodrigoaraujo9/ufc-fight-outcome-predictor",
  )[
    - Statistical model to predict the outcome of UFC fights from fighter data.
  ]
  #project-heading(
    "Flight Management System",
    course: "Algorithms and Data Structures",
    stack: "C++17, Graph Algorithms",
    project-url: "https://github.com/rodrigoaraujo9/flight-management-system",
  )[
    - Global airline network modelled as a directed graph, loaded from CSV. BFS routing with the fewest stops and search filtered by airline with minimal airline changes.
    - Tarjan's algorithm to find the airports critical to the network's connectivity and nearest-airport search (Haversine).
  ]
  #project-heading(
    "Distributed Protocols",
    course: "Distributed Systems · 19/20",
    stack: "Rust, Tokio, gRPC, Docker",
    project-url: "https://github.com/rodrigoaraujo9/tom-rs",
  )[
    - Totally ordered multicast with Lamport clocks, token ring mutual exclusion with automatic ring healing and push-pull gossip with anti-entropy.
  ]
]

#custom-title("Research")[
  #work-heading(
    "CaST (Cryptographically-aware Session Types)",
    "Master's Thesis · Advisors: Pedro Ângelo, Bernardo Portela",
    "FreeST, Haskell, Type Systems",
    datetime(year: 2026, month: 7, day: 1),
    "Present (Jul 2027)",
  )[
    - Extending session types so that misuse of cryptographic resources in protocols is rejected at compile-time, with a soundness proof and integration into the FreeST compiler.
  ]
]

#custom-title("Awards")[
  #certification-heading("4th Place National · Canguru Matemático (27,505 participants)", "")[]
  #certification-heading("1st Place National Robotics Championship · RoboCup 2016 (Leipzig)", datetime(
    year: 2016,
    month: 5,
    day: 1,
  ))[]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Python, C++, SQL, Rust, C, Java, Haskell, OCaml
    - *Data & Tools:* PostgreSQL, MongoDB, Firestore, pandas, NumPy, scikit-learn, FastAPI, Flask, Google Cloud, Docker, Git
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
