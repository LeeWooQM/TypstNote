# Simple Note for Typst
This project uses the code of
https://github.com/Fr4nk1in-USTC/typst-notebook
### How to use it
- Copy temp.typ to your document's folder
- Adding these codes at the top of your source code
```typst
#import "temp.typ": note
#import "temp.typ": theorem
#import "temp.typ": definition
#import "temp.typ": deduction
#import "temp.typ": proof
```
- Use the note function to justify your document
```typst
#show: doc => note(
    title: "Note Title", //title
    author: "Name",
    mail: "None@none.none",
    logo: none, //the logo displayed in the title page
    preface: none, //preface
    boxed_heading: false, //enable the custom heading style
    )[ some things... ]
```
- create different environment
```typst
    #definition(name: "Some definition")[
        Some definition...
    ]

    #deduction( name: "Some equation" )[
        Some equation...
    ]

    #theorem( name: "theorem" )[
        some theorem...
    ]
    #proof()[
        Some proof...
    ]
```
You can also create your own new environment by adding such code in temp.typ
```typst
#let somefunc = base_env.with(
    type: "Something",
    fg: Somecolor,
    bg: Somecolor,
)
```
To use it, add `import "temp.typ: somefunc"`