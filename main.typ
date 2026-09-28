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
  *MSc Computer Science* student (graduating *July 2027*) focused on systems where *correctness and robustness* are key. *Co-founder and lead engineer* of Tinker, a dev tool that guarantees only *verified, reviewed and in-spec* code reaches production. Built a *proof-of-work blockchain* in Rust and is currently extending session types to *enforce correct usage of cryptographic resources* at compile-time. Thrives in *fast-paced* and *high-stakes* environments and emphasizes *testing, documentation and API design* in the development process. Comfortable working *remotely and async*. Based in Porto, Portugal and *open to international relocation or remote work*.
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
    "Co-founder & Lead Engineer",
    "Rust, Gitoxide, Ed25519, IPLD/DAG-CBOR, Serde",
    datetime(year: 2026, month: 7, day: 5), // TODO: real start date
    "Present",
  )[
    - Co-founded and lead a *3-person startup*. *Primary author of the codebase* and owner of the architecture, product direction and sprint planning.
    - Tinker merges *version control, project management and CI* into one system. Work flows from ticket to specification, implementation, verification and review, *enforcing that code matches its specification* so *nothing reaches production unverified, unreviewed or inconsistent*.
    - *Fits how teams already work*, from everyday development to critical releases or *AI agents implementing in parallel*. Each change gets the level of authority, verification and review it needs, and the platform enforces it. The project board tracks real progress on its own, with no manual updates.
    - Designed the *security and trust model*. Signed approvals bound to the exact action, *tiered authority* separating agents from humans and a *tamper-evident history* linking every change in production to the specification, verification and approval behind it.
    - Fully built in *Rust*, with invalid states *unrepresentable at compile-time*, *content-addressed persistence* in Git and *concurrent verification* of immutable versions.
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
    // - *Resource tracking composes across nested subprotocols* of arbitrary depth.
    - Formalizing the extension and providing a *soundness proof*, integrating it into the FreeST compiler and exploring applications in smart contracts and protocol specification.
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

  // #project-heading(
  //   "Portuguese Elections Analytics Platform",
  //   project-url: "https://github.com/rodrigoaraujo9/portuguese-elections",
  //   stack: "PostgreSQL, PostGIS, Python, Plotly, FastAPI, OCaml",
  // )[
  //   - *Interactive data visualization dashboard* for 10 years of Portuguese elections. Choropleth vote-swing maps, treemaps, radar and multi-year trend charts, drillable from country down to parish.
  //   - *Geospatial rendering in-database* with topology-preserving simplification adapted to zoom level.
  //   - *ETL pipeline* into a *star-schema warehouse*, feeding *complex analytical queries* that join spatial and electoral data (recursive roll-ups, window functions, OLAP cubes).
  // ]
]

#custom-title("Awards")[
  #certification-heading(
    "2nd Place in IEEE RetroJam 2025",
    datetime(year: 2025, month: 10, day: 1),
    stack: ("IEEE UP Student Branch", "https://ieee.fe.up.pt/"),
  )[
    - Game from scratch in 48 hours (Rust and Raylib), learning how to *reduce a problem to its core requirements*.
    // - Game from scratch in 48 hours, using Rust, learning how to *reduce a problem to its core requirements*. // remove this if there is space.
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
    - *Languages:* Rust, C/C++, Haskell, Python, SQL, Java
    - *Concepts:* Type Systems, Formal Methods, Applied Cryptography, Concurrency, Distributed Systems
    - *Systems & Tools:* Tokio, LibP2P, gRPC (Tonic), Git, UNIX/Linux, Docker, Terraform, OpenMP
    - *Data:* PostgreSQL, PostGIS, pandas, NumPy, scikit-learn, Plotly, Bonsai
    - *Spoken Languages:* Portuguese (Native), English (Fluent), Spanish (Intermediate)
  ]
]
