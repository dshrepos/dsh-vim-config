# dsh-vim-config

Vim configuration for Go Developers. Working with Neovim.

#Mapping

## Leaders
| key       | Description |
| -         | -           |
| `;`       | FuzzyFinder |
| `<space>` | Leader      |
| `,`       | Files       |
| `s`       | Windows     |
| `t`       | Tabs        |
| `z`       | Foldings    |
| `m`       | Bookmarks   |


## FuzzyFinder `;`
| key   | Mode   | Action                |
| -     | -      | -                     |
| `;hh` | Normal | Maps (Help)           |
| `;f`  | Normal | Files                 |
| `;r`  | Normal | Search in all files   |
| `;b`  | Normal | Buffers               |
| `;t`  | Normal | Tags                  |
| `;T`  | Normal | Tags(Current Buffer)  |
| `;c`  | Normal | Vim & Custom Commands |
| `;gc` | Normal | Commits               |
| `;gs` | Normal | Git Changed files     |
| `;/`  | Normal | Lines(current buffer) |
| `;H`  | Normal | File History          |
| `;h`  | Normal | Command History       |


## Tabs `t`
| key  | Mode   | Action       |
| -    | -      | -            |
| `tt` | Normal | Open new tab |
| `tl` | Normal | Next tab     |
| `th` | Normal | Prev tab     |
| `tH` | Normal | Tab Move -1  |
| `tL` | Normal | Tab Move +1  |
| `tn` | Normal | Tab Move +1  |


## Miscellaneous
| key              | Mode          | Action                                              |
| -                | -             | -                                                   |
| `<space>rn`      | Normal        | Refactor, coc-rename                                |
| `<space>b`       | Normal        | List of buffers, can change by number               |
| `<space>gd`      | Normal        | Git diff split window                               |
| `<space>gb`      | Normal        | Git blame window                                    |
| `<space>f`       | Visual        | Format, coc-format-selected                         |
| `<space>e`       | Normal        | Format entire file based on Vim configuration       |
| `<space>;`       | Normal        | Toggle tag bar                                      |
| `<space>,`       | Normal        | Remove empty spaces                                 |
| `<space>z`       | Normal        | Close other folds except current                    |
| `<space>r`       | Normal        | Reload $MYVIMRC                                     |
| `<space>d`       | Normal/Visual | Duplicate line/selected                             |
| `<space>q`       | Normal        | Delete current buffer                               |
| `<space>m`       | Normal        | Markdown preview                                    |
| `<space>x`       | Visual        | Toggle markdown checkbox ([] -> [x] -> [n/a] -> []) |
| `<Tab>`          | Normal        | Next buffer                                         |
| `;w`             | Normal        | Save with GoFmt, designed for Go files              |
| `U`              | Normal        | Use U to show documentation in preview window       |
| `K`              | Normal        | Use K for show documentation in preview window      |
| `?`              | Normal        | Open easy motion between panels                     |
| `q`              | Normal        | Quit                                                |
| `Q`              | Normal        | Macro                                               |
| `za`             | Normal        | Toggle fold                                         |


## COC
| key              | Mode          | Action                                              |
| -                | -             | -                                                   |
| `[c`             | Normal        | Previous diagnostics                                |
| `]c`             | Normal        | Next diagnostics                                    |
| `gd`             | Normal        | Go to definition                                    |
| `gy`             | Normal        | Go to type                                          |
| `gi`             | Normal        | Go to implementation                                |
| `gr`             | Normal        | Show references                                     |
| `<space>a`       | Normal        | CocList diagnostics                                 |
| `<space>e`       | Normal        | CocList extensions                                  |
| `<space>c`       | Normal        | CocList commands                                    |
| `<space>o`       | Normal        | **CocList outlines, show methods and symbols**      |
| `<space>s`       | Normal        | CocList symbols                                     |
| `<space>j`       | Normal        | Do default action for next item                     |
| `<space>k`       | Normal        | Do default action for previous item                 |
| `<space>p`       | Normal        | Resume latest coc list                              |

