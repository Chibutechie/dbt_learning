# Your Portfolio Site

A 4-page static site (Home, Projects, About, Contact) styled like a dark,
code-inspired terminal/dashboard. Each page is a single, self-contained
HTML file — the CSS and JavaScript are embedded directly inside it, so
there's nothing to break if a file gets moved, downloaded on its own, or
opened straight from a folder.

## File structure

```
portfolio/
├── index.html       Home
├── projects.html    Projects (filterable grid)
├── about.html        Bio, skills, experience timeline, education
├── contact.html      Contact form + direct links
└── resume.pdf         ← add your résumé here (referenced by about.html)
```

That's it — just open any `.html` file in a browser, no setup required.

## Important: editing styles/scripts means editing all 4 files

Because each page carries its own copy of the styles and script (inside
`<style>` and `<script>` tags near the top/bottom of each file), a change
to the color palette or to shared behavior — like the mobile menu or the
typing effect — needs to be made in **all four files**, not just one.

The easiest way: open each file, search for `:root {` (near the very top
of the `<style>` block) to edit colors, fonts, and spacing. The values are
identical across all four pages, so copy your change into each one.

## What to edit first

Everything you need to personalize is wrapped in `[brackets]`. Open each
HTML file and search for `[` to find every spot quickly. Priority order:

1. **Your name & title** — appears in the `<title>` tag and hero of every page.
2. **`EMAIL_PLACEHOLDER@example.com`** — in every footer, plus the contact
   form's `data-to` attribute on `contact.html`. Find-and-replace this
   across all four files.
3. **`USERNAME_PLACEHOLDER`** — your GitHub/LinkedIn handles, same approach.
4. **Hero copy & stats** (`index.html`) — the sentence under your name, and
   the four stat numbers.
5. **Projects** (`projects.html`) — six placeholder cards are set up across
   three categories (data engineering, analysis, AI automation) so the
   filter buttons work out of the box. Replace titles, taglines, tags,
   the two "problem / impact" lines, and the github/demo links. Delete or
   duplicate `<article class="project-card">` blocks to match how many
   projects you actually have.
6. **About** (`about.html`) — bio paragraphs, the YAML-style skills block,
   your experience as "commits" in the timeline, and education.
7. **Résumé** — drop a `resume.pdf` file next to these HTML files; the
   download button on `about.html` already points to it.

## The contact form

There's no backend, so on submit the form opens the visitor's email client
with their message pre-filled (via a `mailto:` link) — set the address once
in `contact.html`'s `data-to` attribute and you're done.

If you'd rather collect submissions without opening email — e.g. into your
inbox or a spreadsheet — swap in a free form backend like
[Formspree](https://formspree.io) or [Netlify Forms](https://docs.netlify.com/manage/forms/setup/):
point the `<form>`'s `action` at their endpoint and you can drop the inline
script's submit handler.

## Running it locally

Just double-click any `.html` file to open it in a browser — no build step,
no server needed, since everything is in the file itself.

## Putting it online (free options)

- **GitHub Pages**: push this folder to a GitHub repo, then in the repo's
  Settings → Pages, set the source to your main branch.
- **Netlify** or **Vercel**: drag and drop the folder into their dashboard
  for an instant live URL.

## Notes

- No JS frameworks — plain HTML/CSS/JS, inlined per page.
- Respects `prefers-reduced-motion` (the typing effect and animations
  fall back to a static state if a visitor has that enabled).
- Nav collapses to a `[ menu ]` toggle below 640px width.
