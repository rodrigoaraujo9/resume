// Spacing: every vertical gap in the CV is set here.
#let space = (
  section: -0.35em, // after each section
  title-rule: -1em, // section title -> its rule
  rule-entry: -0.2em, // rule -> first entry
  after-heading: -0.2em, // entry heading -> next block
  before-body: -0.2em, // extra pull of the bullets up to their heading
  inline-pull: -0.15em, // one-line headings sit closer to their bullets
  leading: 0.6em, // lines inside a bullet
  item: 0.8em, // between bullets
  entry: 0em, // extra gap after each entry
)

#let resume(
  paper: "a4",
  top-margin: 0.4in,
  bottom-margin: 0.2in,
  left-margin: 0.3in,
  right-margin: 0.3in,
  font: "New Computer Modern",
  font-size: 10.3pt,
  personal-info-font-size: 10.5pt,
  author-name: "",
  author-position: center,
  personal-info-position: center,
  phone: "",
  location: "",
  email: "",
  website: "",
  linkedin-user-id: "",
  github-username: "",
  body,
) = {
  set document(
    title: "Resume | " + author-name,
    author: author-name,
    keywords: "cv",
    date: none,
  )

  set page(
    paper: paper,
    margin: (
      top: top-margin,
      bottom: bottom-margin,
      left: left-margin,
      right: right-margin,
    ),
  )

  set text(
    font: font,
    size: font-size,
    lang: "en",
    ligatures: false,
  )

  show heading.where(
    level: 1,
  ): it => block(width: 100%)[
    #set text(font-size + 2pt, weight: "regular")
    #smallcaps(it.body)
    #v(space.title-rule)
    #line(length: 100%, stroke: stroke(thickness: 0.4pt))
    #v(space.rule-entry)
  ]

  let contact_item(value, link-type: "", prefix: "") = {
    if value != "" {
      if link-type != "" {
        underline(offset: 0.3em)[#link(link-type + value)[#(prefix + value)]]
      } else {
        value
      }
    }
  }

  align(author-position, [
    #upper(text(font-size + 7pt, weight: "extrabold")[#author-name])
    #v(-1em)
  ])

  align(personal-info-position, text(personal-info-font-size)[
    #{
      let sepSpace = 0.2em
      let items = (
        contact_item(phone),
        contact_item(location),
        contact_item(email, link-type: "mailto:"),
        contact_item(website, link-type: "https://"),
        contact_item(linkedin-user-id, link-type: "https://linkedin.com/in/", prefix: "linkedin.com/in/"),
        contact_item(github-username, link-type: "https://github.com/", prefix: "github.com/"),
      )
      items
        .filter(x => x != none)
        .join([
          #show "|": sep => {
            h(sepSpace)
            [|]
            h(sepSpace)
          }
          |
        ])
    }
  ])

  body
}

// ---
// Custom functions

#let generic_1x2(r1c1, r1c2) = {
  grid(
    columns: (1fr, 1fr),
    align(left)[#r1c1], align(right)[#r1c2],
  )
}

#let generic_certifications_1x2(r1c1, r1c2) = {
  grid(
    columns: (auto, auto),
    column-gutter: 1fr,
    align(left)[#r1c1], align(right)[#r1c2],
  )
}

#let generic_2x2(cols, r1c1, r1c2, r2c1, r2c2) = {
  // sanity checks
  assert.eq(type(cols), array)

  grid(
    columns: cols,
    align(left)[#r1c1 \ #r2c1],
    align(right)[#r1c2 \ #r2c2]
  )
}

// Separator and one-line heading shared by inline work/project headings.
#let sep = [#h(0.3em)|#h(0.3em)]
#let inline-heading(lhs, rhs) = {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    lhs, rhs,
  )
  v(space.inline-pull)
}

// Spacing and list style shared by every entry's bullets.
#let entry-body(body) = {
  v(space.after-heading)
  if body != [] {
    v(space.before-body)
    set par(leading: space.leading)
    set list(indent: 0.5em, spacing: space.item)
    body
  }
  v(space.entry)
}

#let custom-title(title, spacing-between: space.section, body) = {
  [= #title]
  body
  v(spacing-between)
}

// Custom list to be used inside custom-title section.
#let skills(body) = {
  if body != [] {
    set par(leading: space.leading)
    set list(
      spacing: space.item,
      body-indent: 0.1em,
      indent: 0em,
      marker: [],
    )
    body
  }
}

// Converts datetime format into readable period.
#let period_worked(start-date, end-date) = {
  // sanity checks
  assert.eq(type(start-date), datetime)
  assert(type(end-date) == datetime or type(end-date) == str)

  // custom end-date text (e.g. "Expected Jul 2027")
  if type(end-date) == str and end-date != "Present" {
    return [#start-date.display("[month repr:short] [year]")#h(0.2em)--#h(0.2em)#end-date]
  }

  if type(end-date) == str and end-date == "Present" {
    end-date = datetime.today()
  }

  let start = start-date.display("[month repr:short] [year]")
  let end = if (end-date.month() == datetime.today().month()) and (end-date.year() == datetime.today().year()) {
    "Present"
  } else {
    end-date.display("[month repr:short] [year]")
  }
  return [#start#h(0.2em)--#h(0.2em)#end]
}

// Pretty self-explanatory.
#let work-heading(title, company, location, start-date, end-date, inline: false, body) = {
  // sanity checks
  assert.eq(type(start-date), datetime)
  assert(type(end-date) == datetime or type(end-date) == str)

  if inline {
    // Title | role [| stack] .......... period
    inline-heading(
      [*#title*#sep#emph(company)#if location != "" [#sep#emph(location)]],
      [*#period_worked(start-date, end-date)*],
    )
  } else {
    generic_2x2(
      (1fr, 1fr),
      [*#title*],
      [*#period_worked(start-date, end-date)*],
      emph([#company]),
      emph(location),
    )
  }
  entry-body(body)
}
#let project-heading(
  name,
  course: "",
  grade: "",
  stack: "",
  project-url: "",
  body,
) = {
  let title = if project-url.len() != 0 {
    link(project-url)[*#name*]
  } else {
    [*#name*]
  }

  if grade != "" {
    // Title | course, grade .......... stack
    inline-heading(
      [#title#sep#emph(course), #grade],
      emph(stack),
    )
  } else if course != "" {
    generic_2x2(
      (1fr, 1fr),
      title,
      [],
      emph(course),
      emph(stack),
    )
  } else {
    title

    if stack != "" {
      [
        #show "|": sep => {
          h(0.3em)
          [|]
          h(0.3em)
        }
        |#stack
      ]
    }
  }

  entry-body(body)
}

#let certification-heading(name, date, stack: ("", ""), body) = {
  // Accepts datetime, list of years/datetimes, or string.
  let date-text = if type(date) == datetime {
    date.display("[month repr:short] [year]")
  } else if type(date) == array {
    date.map(d => if type(d) == datetime { d.display("[year]") } else { str(d) }).join(", ")
  } else {
    str(date)
  }

  // Combine name and institution on the same line
  if stack != ("", "") and stack != () {
    let (institution, url) = stack
    generic_certifications_1x2(
      [*#name* #h(0.3em) | #h(0.3em) #link(url)[#institution]],
      [*#date-text*],
    )
  } else {
    generic_certifications_1x2(
      [*#name*],
      [*#date-text*],
    )
  }

  entry-body(body)
}

// Pretty self-explanatory.
#let education-heading(
  degree-type,
  degree,
  institution,
  start-date,
  end-date,
  body,
  degree-url: "",
  institution-url: "",
) = {
  // sanity checks
  assert.eq(type(start-date), datetime)
  assert(type(end-date) == datetime or type(end-date) == str)

  generic_2x2(
    (70%, 30%),
    [*#degree-type*],
    [*#period_worked(start-date, end-date)*],
    if degree-url.len() != 0 { link(degree-url, [#emph[#degree]]) } else { [#emph[#degree]] },
    if institution-url.len() != 0 { link(institution-url, [#emph[#institution]]) } else { [#emph[#institution]] },
  )
  entry-body(body)
}

// #let work_highlights(..points)  = {
//   v(-0.4em)
//   list(
//     indent: 0.4em,
//     ..((..l) => {
//       let new_array = ()
//       for item in l.pos() {
//         new_array.push(par(leading: 0.55em)[#item])
//       }
//       return new_array
//     })(..points)
//   )
// }

#let format-cert-date(date) = {
  if type(date) == datetime {
    date.display("[month repr:short] [year]")
  } else if type(date) == array {
    date.map(d => if type(d) == datetime { d.display("[year]") } else { str(d) }).join(", ")
  } else {
    str(date)
  }
}
