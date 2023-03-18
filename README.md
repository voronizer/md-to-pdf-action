# Markdown to PDF converter action for GitHub

Based on [Markdown to PDF](https://github.com/simonhaenisch/md-to-pdf) library.

## Inputs

### `input-file`

**Required** File name to process.

### `output-file`

**Required** Result file name.

## Example usage

```yaml
- uses: voronizer/md-to-pdf-action
  with:
    input_file: 'Readme.md'
    output_file: 'Readme.pdf'
```

More detailed [see](./.github/workflows/test-run.yml).
