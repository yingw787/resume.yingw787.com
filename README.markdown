# About

Fork of https://github.com/mwhite/resume.

# Installation on Mac

OS Version: macOS 10.12.5

Make sure that you have HomeBrew installed. Run `brew update` to update HomeBrew.

Install Pandoc with HomeBrew, as `brew install pandoc`.

Make sure that you have SSH keys registered to GitHub. If you do not, generate keys.

Install BasicTeX with HomeBrew, as `brew cask install basictex`. Open up the .pkg and install BasicTeX. Alternatively, install through the .pkg provided online.

Add TeX binaries to your PATH. Go to /Library/TeX/texbin, `pbcopy` the `pwd` and add to your `.bash_profile`. `source` your `.bash_profile`.

Make sure you have correct font libraries for TeX installed. Run `sudo tlmgr update --self` in order to update `tlmgr`, and then run `sudo tlmgr install tex-gyre titlesec`.

Run `GRAVATAR_OPTION=--no-gravatar make` to generate PDF and HTML versions of your resume from Markdown.

It should work now. Please file an issue if you believe the instructions are wrong and you have a solution.

# Resume [![Example](https://img.shields.io/badge/example-pdf-green.svg)](https://github.com/mwhite/resume/raw/master/resume.pdf)

This is a simple Markdown resumé template, LaTeX header, and pre-processing
script that can be used with [Pandoc](http://johnmacfarlane.net/pandoc/) to generate
professional-looking PDF and HTML output.

The Markdown flavor supported is
[Pandoc markdown](http://johnmacfarlane.net/pandoc/README.html#pandocs-markdown).

## Dependencies

* Pandoc >= 1.9
* Python >= 2.7
* A Tex installation with pdflatex and the Tex Gyre Pagella font, and some
  packages needed by pandoc.  On Ubuntu you can get this by doing:

```
sudo apt-get install texlive texlive-latex-extra tex-gyre lmodern
```

## Usage

Clone the repo and create a new branch with a different Markdown file for your
resumé.

To generate PDF and HTML versions of each .md file in the directory:

    $ make

In order to enable visually appealing display of contact information, the
Markdown is passed through a Python script that looks for contact details
beginning on the fourth line and moves them into a right-aligned, zero-height
box at the top of the document.  Lines with bullets (•) will be treated as
separate contact lines in the output.

By default, an image of your [Gravatar](http://www.gravatar.com) will be added
to the HTML resumé.  To avoid this:

    $ GRAVATAR_OPTION=--no-gravatar make

## Unicode characters

The default setup should handle most unicode characters.  If you still get
errors (such as for Chinese characters), install XeTeX and a font that has
glyphs for the characters you need.

    $ sudo apt-get install texlive-xetex ttf-wqy-zenhei

Modify `header.tex` to use the name of your preferred font, then run:

    $ PANDOCARGS='--latex-engine=xelatex' make
