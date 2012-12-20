# LaTeX-BoX
![LaTeX-BoX](https://raw.github.com/LaTeX-Box-Team/LaTeX-Box/master/doc/LaTeX-BoX.png)

## This plugin provides:
- Background compilation using latexmk;
- Completion for commands, environments, labels, and bibtex entries;
- A simple table of contents;
- Smart indentation;
- Highlight matching \begin/\end and \left\right pairs;
- Motion between \begin/\end and \left\right pairs with the % key;
- Motion through brackets/braces (with user-defined keys);
- Environment objects (e.g., select environement with "vie" or "vae");
- Inline math objects (e.g., select inline math with "vi$" or "va$").
- Folding of part/chapter/section/subsection
-  OmniCompletion for bibliography entries respects BibLaTeX's
   `\addbibresource`, `\addglobalbib` and `\addsectionbib` commands.
-  The table of contents functionality does not depend anymore on the assumption
   that `\@writefile{toc}{\contentsline ...}` entries in the `*.aux` file always
   occur at the start of some line.
-  Completion of `\ref{...}` commands was completely rewritten. It is now able
   to handle `\@newlabel{label}{{number}{page}...}` entries in the `*.aux` file
   even if `number` or `page` contain arbitrary nested levels of braces.
    
    Labels are additionally held in a cache per `*.aux` file, which is updated
    only if the modification time of the file changes.
-  The table of contents now opens files different from the one currently being
   edited in a new buffer. (I actually think, that this behaviour was
   implemented already, but I could not get it working.) To make this work,
   LaTeX-Box is not loaded per buffer but globally.
    

This plugins aims at being lightweight and simple. For more fully-fledged plugins, see:

- LaTeX-Suite: vimscript#475
- AutomaticTexPlugin: vimscript#2945

## Installation
### With gmarik vundle
_https://github.com/gmarik/vundle_

Add `Bundle 'LaTeX-Box-Team/LaTeX-Box'` to your ~/.vimrc and run
`:BundleInstall` in a vim buffer. Add `!` to the command to update.

### Without a plugin manager

Copy the directories to your `.vim/` folder.

## Mirror information

This is mirrored on 

- http://www.vim.org/scripts/script.php?script_id=3109
- https://launchpad.net/~vim-latex-box
