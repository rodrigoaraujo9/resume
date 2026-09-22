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
  *MSc Computer Science student* focused on systems where *correctness and robustness* are key, such as
  protocols, consensus and infrastructure people actively rely on. Built a *deployable proof-of-work blockchain* in Rust and is
  currently extending session types to *enforce correct usage of cryptographic resources* at compile-time. Works well *autonomously* and *asynchronously* and emphasizes *testing, documentation and interfacing* in the development process. Comfortable working remotely and async.
]

#custom-title("Education")[
  #education-heading(
    "Master's",
    "Computer Science",
    "University of Porto (FCUP)",
    datetime(year: 2025, month: 9, day: 11),
    "Present",
    degree-url: "https://sigarra.up.pt/fcup/pt/cur_geral.cur_view?pv_ano_lectivo=2021&pv_curso_id=876&pv_origem=CAND",
    institution-url: "https://www.up.pt/fcup/en/",
  )[]
  #education-heading(
    "Bachelor's",
    "Computer Science and Engineering",
    "University of Porto (FCUP)",
    datetime(year: 2022, month: 9, day: 11),
    datetime(year: 2025, month: 7, day: 11),
    degree-url: "https://sigarra.up.pt/feup/pt/cur_geral.cur_view?pv_curso_id=22841",
    institution-url: "https://www.up.pt/",
  )[]
]

#custom-title("Research")[
  #work-heading(
    "CaST (Cryptographically-aware Session Types)",
    "Master's Thesis",
    "FreeST, Haskell, Type Systems, Applied Cryptography",
    datetime(year: 2026, month: 7, day: 10),
    "Present",
  )[
    - Extending the expressiveness of session types to capture *cryptographic resource usage*, so that its misuse in protocols is detected and rejected at compile-time.
    - *Resource tracking composes across nested subprotocols* of arbitrary depth and is preserved under sequential composition and recursion.
    - Formalizing the extension and providing a *soundness proof*, integrating it into the FreeST compiler and applying it to smart contracts and protocol specification.
  ]
]


#custom-title("Projects")[
  #project-heading(
    "PoW Blockchain for Decentralized Auctions",
    project-url: "https://github.com/rodrigoaraujo9/blocktion",
    stack: "Rust, Tokio, LibP2P, Dalek, Docker",
  )[
    - Extensive *research on the state of the art of Bitcoin*, Ethereum and Solana and investigation regarding the security and resilience to failure of these systems.
    - Developed a DHT overlay based on Kademlia for *decentralized network construction*.
    - PoW Blockchain with *Blake2b hashing*, *Ed25519 signatures* and *Merkle Trees* for transaction validation.
    - *Client for auctions* using the blockchain layer as a public ledger.
    - Docker *autonomous network behavior simulation* with clients, bootstrap nodes, well behaved nodes and malicious nodes.
    - Developed for the Data Systems Security class and graded 19.1/20.
  ]

  #project-heading(
    "Real-Time Modular Synthesizer",
    project-url: "https://github.com/rodrigoaraujo9/mugen",
    stack: "Rust, Tokio, Rodio, Ratatui, SQLite",
  )[
    - *Real-time audio engine* isolated from the UI and control logic, communicating through *lock-free atomics and message passing*. The audio path never locks, allocates or blocks on I/O.
    - *Modular*, leveraging Rust's type system. The audio DSP graph is built at runtime and instantiated per note, so voices run *independently* and the sound can be *reconfigured in real-time* without interruption.
  ]

  // #project-heading(
  //   "Portuguese Elections Analytics Platform",
  //   project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
  //   stack: "PostgreSQL, PostGIS, Python, Plotly, FastAPI, OCaml",
  // )[
  //   - *Interactive data visualization dashboard* for 10 years of Portuguese elections. Choropleth vote-swing maps, treemaps, radar and multi-year trend charts, drillable from country down to parish.
  //   - *Geospatial rendering in-database*. Maps generated as SVG directly by PostGIS, with topology-preserving simplification adapted to zoom level.
  //   - *ETL pipeline* into a *star-schema warehouse*, feeding *complex analytical queries* that join spatial and electoral data (recursive roll-ups, window functions, OLAP cubes).
  // ]
]

#custom-title("Certifications")[
  #certification-heading(
    "2nd Place in IEEE RetroJam 2025",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[
    - Built a game from scratch in 48 hours, using Rust and Raylib, learning how to *reduce a problem to its core requirements*.
    // - Game from scratch in 48 hours, using Rust, learning how to *reduce a problem to its core requirements*. // remove this if there is space.
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

#custom-title("Technical Skills")[
  #skills()[
    - *Programming Languages:* Rust, Haskell, C/C++, OCaml, Java, SQL
    - *Frameworks & Tools:* Git, UNIX, Tokio, Docker, Plotly, POSIX, STM, gRPC, LibP2P, Dalek, PostgreSQL, Terraform, Raylib and OpenMP
    - *Spoken Languages*: Portuguese (Native), English (B2 First, Cambridge), Spanish (Proficient)
  ]
]
