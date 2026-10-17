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

#custom-title("Summary")[
  *MSc Computer Science* student (graduating *July 2027*) focused on
  *systems programming, security and software correctness*.
  Co-founder and CEO of *Tinker*, an early-stage startup, leading
  product direction and hands-on engineering as its primary developer.
  Built a *proof-of-work blockchain* in Rust; current research extends
  *session types* to enforce correct use of cryptographic resources
  at compile time. Currently focused on *growing Tinker* and seeking
  *early-stage funding* to expand development.
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
    institution-url: "https://www.up.pt/",
  )[]
]

#custom-title("Experience")[
  #work-heading(
    "Tinker",
    "Co-founder, CEO & Lead Engineer",
    "",
    datetime(year: 2026, month: 7, day: 17), // TODO: real start date
    "Present",
  )[
    - Originated the product concept and co-founded Tinker with two partners. Lead company strategy, product direction and engineering,
      owning the architecture and serving as the primary developer.
    - Designed and built a *lightweight Rust backend* integrating version control, project management and CI into a unified development workflow.
    - Implemented the platform’s *core storage components*: a Git underlay, content-addressed persistence, a permission store and replay mechanisms.
    - Designed the *authorization and trust model*, with signed approvals bound to exact actions, tiered permissions and a tamper-evident history linking changes to their verification and approval.
    - Built a *modular verification engine* and a *fully asynchronous, automated pipeline* coordinating implementation, verification, CI and review, including support for agentic implementation and concurrent verification of immutable versions.
    - Developed a *VS Code extension* exposing the full development workflow within the editor, from tickets and specifications through implementation, verification and review.
  ]
]

#custom-title("Research")[
  #work-heading(
    "CaST (Cryptographically-aware Session Types)",
    "Master's Thesis",
    "FreeST, Haskell, Type Systems, Applied Cryptography",
    datetime(year: 2026, month: 7, day: 10),
    "Present (Jul 2027)",
  )[
    - Extending the expressiveness of session types to capture *cryptographic resource usage*, so that its misuse in protocols is detected and rejected at compile-time.
    - Formalizing the extension and providing a *soundness proof*, integrating it into the FreeST compiler.
  ]
]


#custom-title("Coursework")[
  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    course: "Data Systems Security · 19/20",
    stack: "Rust, Tokio, LibP2P, Docker, Blake2b, Ed25519",
  )[
    - Extensive *research on the state of the art* of Bitcoin, Ethereum and Solana and investigation regarding the security and resilience to failure of these systems.
    - Developed a DHT overlay based on Kademlia for *decentralized network construction*.
    - PoW Blockchain with *Blake2b hashing*, *Ed25519 signatures* and *Merkle Trees* for transaction validation.
    - *Client for auctions* using the blockchain layer as a public ledger.
    - Docker *adversarial network simulation* with clients and bootstrap, well behaved and malicious nodes.
  ]

  //   #project-heading(
  //     "Portuguese Elections Analytics Platform",
  //     project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
  //     course: "Advanced Topics in Databases · 18/20",
  //     stack: "PostgreSQL, PostGIS, Python, Plotly, FastAPI, OCaml",
  //   )[
  //     - *Interactive data visualization dashboard* for 10 years of Portuguese elections. Choropleth vote-swing maps, treemaps, radar and multi-year trend charts, drillable from country down to parish.
  //     - *Geospatial rendering in-database* with topology-preserving simplification adapted to zoom level.
  //     - *ETL pipeline* into a *star-schema warehouse*, feeding *complex analytical queries* that join spatial and electoral data (recursive roll-ups, window functions, OLAP cubes).
  //   ]
]

#custom-title("Awards")[
  #certification-heading(
    "2nd Place in IEEE RetroJam 2025",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[
    - Game from scratch in 48 hours (Rust and Raylib), learning how to *reduce a problem to its core requirements*.
  ]

  #certification-heading(
    "Academic Merit Awards",
    (2020, 2021, 2022),
  )[]

  // #certification-heading(
  //   "Participation in RoboCup 2016",
  //   datetime(year: 2016, month: 6, day: 1),
  //   stack: ("RoboCup Federation", "https://2016.robocup.org/web/index-2.html"),
  // )[]

  #certification-heading(
    "1st Place in the National Robotics Championship",
    datetime(year: 2016, month: 5, day: 1),
    stack: ("Instituto Politécnico de Bragança", "https://robotica2016.ipb.pt/indexpt.html"),
  )[]
]

#custom-title("Technical Skills")[
  #skills()[
    - *Languages:* Rust, C, Python, SQL, Haskell, C++, Java
    - *Core Areas:* Systems Programming, Distributed Systems & P2P Networking, Type Systems & Formal Methods, Functional Programming, Applied Cryptography
    - *Tech Stack:* Tokio, Dioxus, libp2p, Tonic (gRPC), Git, Linux, Docker, Terraform
    - *Data:* PostgreSQL, PostGIS, pandas, NumPy
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
