# Tethys Article

<p align="center">
  <img src="fig/rock.jpg" alt="Rock"/>
</p>

Tethys Article is the LaTeX template version of Tethys Thesis for articles. An
example of the template can be shown
[here](http://hypirion.com/pdf/tethysarticle.pdf).

## Introduction

Tethys Thesis is a template I tend to use for online papers, which also includes
LaTeX tools taylored towards computer scientists.

Notable choices is similar to Tethys Thesis:

* Bibliography is handled with biblatex, not bibtex
* For listings, Minted is used instead of lstlistings
* For algorithms, the package *algpseudocode* is used
* Running `make repeatedly` runs latexmk, making it easier to do "agile" LaTeX
  development

### ... A Sans Serif Font for Papers?

The font used for Tethys Article is Quattrocento Sans, which sounds like a very
strange choice at first: For *papers*, one should preferably choose sans serif,
right?

Well, there are two things I have discovered:

* I tend to read most papers on a screen, where (presumably?) sans serif fonts
  are better suited.
* I am not a typographer nor designer.

## Setup

You have to install both the latexmk and a boatload of LaTeX packages. In
addition, if you want to use minted, you'll have to install pygments as well. I
tend to just do

```bash
sudo apt-get install texlive-full latexmk python-pygments
```

on Debian-based systems.

## License

Source Copyright © 2014 Jean Niklas L'orange. Licensed under the LaTeX Project
Public License, version 1.3 or later. See COPYING for details.

*"Rock"* Copyright © 2012 David Smit. *"Rock"* is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License][cc-by-nc-sa].
 
[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/3.0/
