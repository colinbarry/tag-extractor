Extracts tags from text file, where tags are always in the format:

```
Tags="alfa, bravo, charlie"
```

and make be duplicated. This program prints a list of found tags, excluding 
duplicating when they are discovered.

## Usage

```bash
lua ./extract-tags.lua [filename]
```
