# Jekyll Stepper

A Jekyll plugin for step-by-step tutorial accordions. Converts fenced code blocks with the `stepper` language identifier into interactive accordion components with Previous/Next navigation.

## Installation

Add to your `Gemfile`:

```ruby
gem "jekyll-stepper"
```

Then run:

```bash
bundle install
```

Add to your `_config.yml`:

```yaml
plugins:
  - jekyll-stepper
```

## Usage

Use a fenced code block with `stepper` as the language identifier:

`````markdown
````stepper
# Step 1: First step title

Content for the first step in markdown.

# Step 2: Second step title

Content for the second step, including code blocks:

```html
<h1>Hello World</h1>
```

# Step 3: Final step

More content here.
````
`````

### Syntax rules

- Use **4 backticks** for the outer block to allow nested code blocks inside
- Each `# Title` becomes an accordion header
- Content between titles is rendered as Markdown
- A navigation bar with Previous/Next buttons is added automatically
- The first step is open by default

## Styling

The plugin generates HTML with these CSS classes:

- `.stepper` — Container wrapper
- `.stepper-nav` — Navigation bar
- `.stepper-prev` / `.stepper-next` — Navigation buttons
- `.stepper-progress` — Step counter
- `details` / `summary` — Accordion elements

If your theme doesn't include stepper styles, add this to your CSS:

```css
.stepper {
  margin-bottom: 2rem;
}

.stepper details {
  border: 1px solid var(--color-border, #E5E8EA);
  border-radius: 8px;
  margin-bottom: 0.5rem;
  overflow: hidden;
}

.stepper details summary {
  padding: 1rem 2rem;
  cursor: pointer;
  font-weight: 500;
  background: var(--color-code-bg, #F4F6F8);
  transition: background 0.2s;
  list-style: none;
}

.stepper details summary::-webkit-details-marker {
  display: none;
}

.stepper details summary::before {
  content: "\25B8";
  margin-right: 0.5rem;
  transition: transform 0.2s;
  display: inline-block;
}

.stepper details[open] summary::before {
  transform: rotate(90deg);
}

.stepper details[open] summary {
  background: var(--color-border, #E5E8EA);
  border-left: 3px solid var(--color-red, #E40046);
}

.stepper details summary:hover {
  background: var(--color-border, #E5E8EA);
}

.stepper .stepper-content {
  padding: 1rem 2rem;
}

.stepper .stepper-nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  padding-top: 1rem;
  margin-top: 1rem;
  border-top: 1px solid var(--color-border, #E5E8EA);
}

.stepper-prev,
.stepper-next {
  padding: 0.5rem 1rem;
  border: 1px solid var(--color-border, #E5E8EA);
  border-radius: 6px;
  background: var(--color-bg, #FFFFFF);
  color: var(--color-text, #1A1A1A);
  font-size: 0.875rem;
  cursor: pointer;
  transition: opacity 0.2s, background 0.2s;
}

.stepper-prev:hover:not(:disabled),
.stepper-next:hover:not(:disabled) {
  background: var(--color-border, #E5E8EA);
}

.stepper-prev:disabled,
.stepper-next:disabled {
  opacity: 0.4;
  cursor: not-allowed;
}

.stepper-progress {
  font-size: 0.875rem;
  color: var(--color-text-secondary, #5A6A72);
}
```

## Development

```bash
gem build jekyll-stepper.gemspec
gem install jekyll-stepper-0.1.0.gem
```

## License

MIT
