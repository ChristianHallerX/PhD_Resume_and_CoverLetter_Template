# PhD_Resume_and_CoverLetter_Template

[![](https://img.shields.io/badge/PDF-latest-orange.svg?style=flat)](https://github.com/JesperDramsch/latex-cv-boosted/tree/master-pdf) [![Build Status](https://travis-ci.org/JesperDramsch/latex-cv-boosted.svg?branch=master)](https://travis-ci.org/JesperDramsch/latex-cv-boosted)


# Introduction

LaTeX résumé and cover letter tetemplate based on the classic <a href="https://www.latextemplates.com/template/friggeri-resume-cv" target="_blank"> "Friggeri CV"</a> <a href="https://github.com/ashee/cv" target="_blank">(Repo)</a> by Adrien Friggeri published in 2012. Numerous forks have been added since and have made the template significantly more feature rich such as the <a href="https://www.latextemplates.com/template/friggeri-resume-cv" target="_blank">"latex-cv-boosted"</a> by Jesper Dramsch. 

Theis fork adds two-page functionality with side columns and Letter paper formatting, while toning-down the color richness. Additional sections such as "Profile" on top and "Projects" were added. All features of the previous fork, <a href="https://www.latextemplates.com/template/friggeri-resume-cv" target="_blank">"latex-cv-boosted"</a> by Jesper Dramsch, are preserved.

## Features and History:

This Fork:
* Two-Page Résumé
* Side Column on First and Second Page
* Profile and Projects Section
* Letter Paper Format
* Mild Coloration (single color, customizable)

Previous Fork <a href="https://www.latextemplates.com/template/friggeri-resume-cv" target="_blank">"latex-cv-boosted"</a>:
* Cover Letter (matching design)
* Icon Support
* B/W and Reduced-Ink Support
* Command-Line Build (Makefile)
* Class File (.cls)
* Scoring Dots
* Bibliography Section
* A4 Paper Format
* Five Fonts (heros, alegreya, merriweather, nunito, roboto)

Original <a href="https://github.com/ashee/cv" target="_blank">Friggeri CV</a>:
* Single-Page Résumé
* Strong Coloration
* One Font

## How it looks:

![Résumé PDF](https://raw.githubusercontent.com/ChristianHallerX/PhD_Resume_and_CoverLetter_Template/readme-material/cv.pdf)
![CoverLetter PDF](https://raw.githubusercontent.com/ChristianHallerX/PhD_Resume_and_CoverLetter_Template/readme-material/coverletter.pdf) ChristianHallerX/PhD_Resume_and_CoverLetter_Template/blob/readme-material/coverletter.pdf

## Résumé Sections

| Section        | Example                                      |
|----------------|----------------------------------------------|
| Awards         | Research Grants, Scholarships etc.           |
| Certifications | Professional and trade certifications        |
| Education      | Degrees, theses, academic focus areas        |
| Experience     | Work history                                 |
| Interest       | Professional and personal interest areas     |
| Profile        | 1-2 sentence summary of you                  |
| Projects       | Common in technology industry and elsewhere  |
| Publications   | Academic publications (uses biber)           |
| Communication  | Academic publications (simplified, no biber) |
| References     | People who can provide recommendations       |
| Volunteer      | Outreach and charity                         |


# Options
Pass options for Fonts and Colors

## Fonts
The default font is heros if no parameter passed.
* <a href="https://tug.org/FontCatalogue/texgyreheros/" target="_blank">`heros`</a>
* <a href="https://tug.org/FontCatalogue/alegreyasans/" target="_blank">`alegreya`</a>
* <a href="https://tug.org/FontCatalogue/merriweathersans/" target="_blank">`meriweather`</a>
* <a href="https://fonts.adobe.com/fonts/nunito" target="_blank">`nunito`</a>
* <a href="https://tug.org/FontCatalogue/roboto/" target="_blank">`roboto`</a>

## Colors
The default are friggeri colors if no parameter passed.
* `custcol` = your custom color. Single color scheme.
* `nocolors` = changes to gray and white, header color is gray.
* `print` = changes to gray and white, header color is white to minimize ink usage.

# Customize the Templates
Activating and de-activating lines happens with commenting (`%`).
1. Enter all your details in résumé (`CV.tex`) and cover letter (`coverletter.tex`).
2. Replace the `signature.png` with your scanned signature or comment it out 
2. Fill in your details in the `Sections` subfolder.
3. In the `CV.tex`, bring the sections in order you prefer. Note: don't let a section exceed the first page, since breaking the longlist objects results in an error.
4. If you want to use the custom single-color scheme, set your custom color as <a href="https://htmlcolorcodes.com/" target="_blank">HTML code</a> in `friggeri-cv.cls` and `friggeri-coverletter.cls`.
4. Enter font and color options in the line `\documentclass[roboto,custcol]{friggeri-cv}` in the tex files. These options can be passed directly while building (see below).

# Build the Documents

## Installation

Install <a href="https://www.latex-project.org/" target="_blank">LaTeX</a> and pick an <a href="https://tex.stackexchange.com/questions/339/latex-editors-ides" target="_blank">Editor/IDE</a> if you don't have them installed.

## Command Line Build

Use `make` to build both the coverletter and résumé. Use `make cv` for only résumé, use `make coverletter` for only coverletter.
The class options (Fonts, Colors)can be put into the `DOCOPTIONS`.

## IDE Build

1. Select build with XeLaTeX. Select "XeLaTeX + View PDF" for quick build.
3. Select Quick Build and install all packages that may be missing on your system.
2. If you want to use a publication list with a .bib file and Biber then you need to build a database from the .bib file before any contents will appear in the PDF.
  1. Select Biber as bibliography builder. Then create a custom build command:  Next, b XeTeX -> Biber -> XeTeX -> XeTeX. <a href="https://tex.stackexchange.com/questions/154751/biblatex-with-biber-configuring-my-editor-to-avoid-undefined-citations/" target="_blank">More info here.</a>.
  2. Once the files were created you can resume with quick builds, unless you want to modify the database.
