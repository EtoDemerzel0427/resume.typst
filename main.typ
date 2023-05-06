#import "fontawesome.typ": *
#import "simplecv.typ": template, education_entry, work_entry, skill_entry 



// Change the theme color of the cv.
#let color = black
// Change to your name.
#let name = "John Doe"

// Change the shown contact data. You can also change the order of the elements so that they will show up in a different order. Currently, only these five elements are available with icons, but you can add new ones by editing the template.
#let contact_data = (
  (
    "service":fa[#linkedin],
    "display": "johndoe",
    "link": "https://www.linkedin.com/in/johndoe/"
  ),
  (
    "service": fa[#envelope],
    "display": "johndoe@gmail.com",
    "link": "mailto://johndoe@gmail.com"
  ),
  (
    "service": fa[#phone],
    "display": "+1 xxx-xxx-xxxx",
    "link": "tel:+1 xxx xxx xxxx"
  ),
  (
    "service": fa[#github],
    "display": "johndoe-git",
    "link": "https://github.com/johndoe-git"
  ),
  (
    "service": fa[#globe],
    "display": "johndoe.club",
    "link": "https://johndoe.club"
  ),
)

#show: doc => template(name, contact_data, color, doc)

// Starting from here, you can add as much content as you want. This represents the main content of the cv.
= Education
#education_entry("Computer Science", "Stanford University",
degree_title: "M.S.", start_date: "Jan 2022", end_date: "May 2024 (Expected)",
description: "GPA: 4.0/4,0", location: "Stanford, California", details: (
  [Teaching Assistant of CS149: Parallel Computing (Fall 2022)],
  [Teaching Assistant of CS224n: Natural Language Processing with Deep Learning (Spring 2023)],
))
#education_entry("Computer Science", "Tsinghua University",
degree_title: "B.Eng.", start_date: "Sep 2016", end_date: "Jun 2020", description: "rank: 25/315", location: "Beijing, China"
)

= Experience
#work_entry("Software Development Intern", "Google", start_date: "Aug 2023", end_date: "Nov 2023", location: "Bay Area, California", tasks: (
  lorem(18),
  lorem(25)
)
)

#work_entry("Haskell Development Intern", "Jane Street Capital", start_date: "Jun 2023", end_date: "Aug 2023", location: "New York City, New York", tasks: (
  lorem(32),
  lorem(15)
)
)

#work_entry("Research Intern", "ByteDance", start_date: "Oct 2019", end_date: "Nov 2019", tasks: (
  lorem(18),
  [some random text to show how you can input text],
  "You can also use quotes."
  ),
location: "Beijing, China")

= Projects
*Project-A: Some descriptive text*. 
- #lorem(18)
- #lorem(17)
- #lorem(19)
*Typst: A new markup-based typesetting system*. #link("https://github.com/typst/typst")[#fa[#github]]
- #lorem(22)
- #lorem(25)

*Project-C: #lorem(10)*
- #lorem(40)

= Skills
// Ratings won't be displayed in this template.

- *Languages*: C/C++, Python, Golang, Java, Rust, CUDA, JavaScript/TypeScript, Bash, SQL, MATLAB
- *Technologies/Frameworks*: Flask, Docker, Git, WebGL, ReactJS, Pytorch, TensorFlow, Horovod, MPI, MySQL, gRPC, Typst, Apache Beam, Slurm, VTune

= Publications
  - (C-1)  #underline[K. He], X. Zhang, S. Ren, and J. Sun, "Deep Residual Learning for Image Recognition," #emph[CoRR, Volume abs/1512.03385], 2015.
  - (J-1) A. Smith, B. Johnson, C. Lee, and #underline[D. Miller], "Efficient Natural Language Processing with Transformer Models," #emph[Journal of Artificial Intelligence Research (JAIR), Volume 58, Issue 3, pp. 627-645], 2023.