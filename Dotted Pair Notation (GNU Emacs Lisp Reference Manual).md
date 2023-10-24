<!DOCTYPE html>
<!-- saved from url=(0083)https://www.gnu.org/software/emacs/manual/html_node/elisp/Dotted-Pair-Notation.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Dotted Pair Notation (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Dotted Pair Notation (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Dotted Pair Notation (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsubsection-level-extent" id="Dotted-Pair-Notation">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Association-List-Type.html" accesskey="n" rel="next">Association List Type</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Box-Diagrams.html" accesskey="p" rel="prev">Drawing Lists as Box Diagrams</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cell-Type.html" accesskey="u" rel="up">Cons Cell and List Types</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsubsection" id="Dotted-Pair-Notation-1">2.4.6.2 Dotted Pair Notation</h4>
<a class="index-entry-id" id="index-dotted-pair-notation"></a>
<a class="index-entry-id" id="index-_002e-in-lists"></a>

<p><em class="dfn">Dotted pair notation</em> is a general syntax for cons cells that
represents the <small class="sc">CAR</small> and <small class="sc">CDR</small> explicitly.  In this syntax,
<code class="code">(<var class="var">a</var> . <var class="var">b</var>)</code> stands for a cons cell whose <small class="sc">CAR</small> is
the object <var class="var">a</var> and whose <small class="sc">CDR</small> is the object <var class="var">b</var>.  Dotted
pair notation is more general than list syntax because the <small class="sc">CDR</small>
does not have to be a list.  However, it is more cumbersome in cases
where list syntax would work.  In dotted pair notation, the list
‘<samp class="samp">(1 2 3)</samp>’ is written as ‘<samp class="samp">(1 .  (2 . (3 . nil)))</samp>’.  For
<code class="code">nil</code>-terminated lists, you can use either notation, but list
notation is usually clearer and more convenient.  When printing a
list, the dotted pair notation is only used if the <small class="sc">CDR</small> of a cons
cell is not a list.
</p>
<p>Here’s an example using boxes to illustrate dotted pair notation.
This example shows the pair <code class="code">(rose . violet)</code>:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---
   |   |   |--&gt; violet
    --- ---
     |
     |
      --&gt; rose
</pre></div></div>

<p>You can combine dotted pair notation with list notation to represent
conveniently a chain of cons cells with a non-<code class="code">nil</code> final <small class="sc">CDR</small>.
You write a dot after the last element of the list, followed by the
<small class="sc">CDR</small> of the final cons cell.  For example, <code class="code">(rose violet
. buttercup)</code> is equivalent to <code class="code">(rose . (violet . buttercup))</code>.
The object looks like this:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; buttercup
    --- ---      --- ---
     |            |
     |            |
      --&gt; rose     --&gt; violet
</pre></div></div>

<p>The syntax <code class="code">(rose . violet . buttercup)</code> is invalid because
there is nothing that it could mean.  If anything, it would say to put
<code class="code">buttercup</code> in the <small class="sc">CDR</small> of a cons cell whose <small class="sc">CDR</small> is already
used for <code class="code">violet</code>.
</p>
<p>The list <code class="code">(rose violet)</code> is equivalent to <code class="code">(rose . (violet))</code>,
and looks like this:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; nil
    --- ---      --- ---
     |            |
     |            |
      --&gt; rose     --&gt; violet
</pre></div></div>

<p>Similarly, the three-element list <code class="code">(rose violet buttercup)</code>
is equivalent to <code class="code">(rose . (violet . (buttercup)))</code>.
It looks like this:
</p>
<div class="example">
<div class="group"><pre class="example-preformatted">    --- ---      --- ---      --- ---
   |   |   |--&gt; |   |   |--&gt; |   |   |--&gt; nil
    --- ---      --- ---      --- ---
     |            |            |
     |            |            |
      --&gt; rose     --&gt; violet   --&gt; buttercup
</pre></div></div>

</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Association-List-Type.html">Association List Type</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Box-Diagrams.html">Drawing Lists as Box Diagrams</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cell-Type.html">Cons Cell and List Types</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>