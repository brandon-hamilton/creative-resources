# Getting Help

If you ever need help with a `<command>`, or want to know what it does, here's how to show the information directly in the terminal.

First in PowerShell:
```powershell
PS C:\> Get-Help <command> -Full
```

Next in cmd.exe:
```cmd
C:\> <command> /?
```

Then again with three examples for bash:
```bash
user@user:~$ man <command>
user@user:~$ <command> -h
user@user:~$ <command> --help
```

# Renaming Files Programmatically

### Renaming Files With Bash

Rename all files in the current directory ending with `.jpg.png` to just `.png` instead:

```bash
for file in ./*\.*; do mv "$file" "${file%.jpg.png}.png"; done
```

-  `%`will match the right-most match
-  `%%` will match the left-most match
- Same for `#` and `##`

More examples replacing a pattern:

```bash
# Template, replaces x with y for all files in the current working directory (cwd)
for file in ./*\.*; do if (echo "$file" | grep -Fq "x"); then mv "$file" "$(echo "$file" | sed 's/x/y/g')"; fi; done

# replace .jpg.jpg with .jpg for all files in the current working directory (cwd)
for file in ./*\.*; do if (echo "$file" | grep -Fq ".jpg.jpg"); then mv "$file" "$(echo "$file" | sed 's/.jpg.jpg/.jpg/g')"; fi; done

# replace -- with _ for all files in the current working directory (cwd)
for file in ./*\.*; do if (echo "$file" | grep -Fq "--"); then mv "$file" "$(echo "$file" | sed 's/\-\-/_/g')"; fi; done
```

The last example required both `--` characters be escaped, meaning a `\` is in front of each character.

[Escaping](https://en.wikipedia.org/wiki/Escape_character) is required for some symbols and characters that are often used on the command line for special purposes such as modifying the command.

Escaping those characters tells the command line to interpret them *literally* (as two dashes `--`) rather than special command modifiers.

If a command ever has unexpected results, (or to avoid unexpected results) try single quoting arguments for a command, or escaping any symbols or characters that aren't plain letters or numbers.

For example:

```bash
# single quoting the argument made to the "echo" command
echo 'argument one'

# escaping the space, because spaces are special characters
# how would "echo" know if it's one, or two arguments, without single quotes or escaping?
echo argument\ one
```

[This page from the bash manual](https://www.gnu.org/software/bash/manual/bash.html#Escape-Character) provides a good overview of this concept.


---

### Renaming Files With PowerShell

https://docs.microsoft.com/en-us/dotnet/api/system.string.replace?view=net-6.0

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-item?view=powershell-7.2

Rename all files in the current directory ending with `.jpg.jpg` to end with `.jpg`:
```powershell
Get-ChildItem *.jpg.jpg | Rename-Item -NewName { $_.Name -replace '.jpg.jpg','.jpg' }
```

---

# Finding Files On Your PC

Applies to: Windows, macOS, Linux

Both `PowerShell` and `bash` have become cross-platform in recent years, so examples could apply to any OS depending on what you have installed.

---

### Finding Files Using cmd.exe

```cmd
dir /S /B C:\Users\User | findstr /R ".\.psw"
```

The above command finds all `.psw` files under `C:\Users\User`.

If you're in a PowerShell prompt you can execute the above command by prepending it with `cmd.exe /C`:

```powershell
cmd.exe /C dir /S /B C:\Users\User | findstr /R ".\.psw"
```

| Syntax                        | Description                                                                                                           |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `cmd.exe /C`                  | used to execute Windows command prompt commands, if you're in PowerShell                                              |
| `dir /S /B C:\Users\User` | `/S` will search recursively, while `/B` displays the filename without additional information                             |
| `\|`                          | the pipeline 'pipes' the output from `command 1` for `command 2` to use                                               |
| `findstr /R ".\.psw"` | Attempts to find the string (findstr) matching a regular expression of `.\.psw` (Essentially, tell us all of the `.psw` files that you can find) |

See the additional syntax of `/R` regular expressions quick reference with: `findstr /?`

---

### Finding Files Using PowerShell

```powershell
Get-ChildItem -Path C:\Users\User\*.psw -Recurse -Force -ErrorAction SilentlyContinue | Sort-Object -Unique | select -Property FullName

```

The above command finds all `.psw` files under `C:\Users\User`, and shows their file path.

| Syntax                                                    | Description                                                                              |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `Get-ChildItem -Path C:\Users\User\*.psw -Recurse -Force` | This recursively searches the User's path, for all `.psw` files (when using `-Force`, include hidden directories like `AppData`) |
| `-ErrorAction SilentlyContinue`                           | Does not print errors to the terminal if it cannot access a restricted path (which is fine, we would have read access to our Photoshop settings folder) |
| `Sort-Object -Unique`                                     | All items returned are "objects" in the PowerShell (`.NET`) language. Only show us unique results |
| `Select -Property FullName`                               | Give us the full path name to the `.psw` file(s)                                         |

It may strengthen your understanding of what's going on by running each part of the command individually to see the output:
```powershell
PS C:\Users\User> Get-ChildItem -Path C:\Users\User\*.psw -Recurse -Force -ErrorAction SilentlyContinue 
PS C:\Users\User> Get-ChildItem -Path C:\Users\User\*.psw -Recurse -Force -ErrorAction SilentlyContinue | Sort-Object -Unique
PS C:\Users\User> Get-ChildItem -Path C:\Users\User\*.psw -Recurse -Force -ErrorAction SilentlyContinue | Sort-Object -Unique | select -Property FullName
```

---

### Finding Files Using bash

```bash
find / -type f -name "*.psw" -ls 2>/dev/null

```

The above command finds all `.psw` files on the entire hard drive `/` and shows their file path.

| Syntax          | Description                                                                                                                                     |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `find /`        | Executes the `find` binary starting at the base of the filesysytem `/` (on windows you would likely use `/mnt/c/Users/User` for the user directory) |
| `-type f`       | Type = `f`, we're looking for a file                                                                                                           |
| `-name "*.psw"` | Name = `*.psw`, we're looking for a name that matches `*` (anything) plus `.psw`                                                                      |
| `-ls`           | List contents of a path, in this case `-ls` will be run on all `*.psw` files we find, which will tell us exactly where they are on the filesystem   |
| `2>/dev/null`   | ignore errors (in this case generated by directories we cannot read from)                                                                                    |

`/dev/null` on a Unix filesystem is like the Recycle Bin for the commandline, but it's a void. Any output sent there is not shown or recoverable, so send any errors there since we don't need to see directories we don't have access to anyway.

---

### Finding Files: Practical Example

```powershell
PS C:\Users\User> Get-ChildItem -Path C:\Users\User\*2021*V001*R00[1-7].psd -Recurse -Force -ErrorAction SilentlyContinue | Sort-Object -Unique | select -Property FullName
```

The above command would return revisions 1 through 7 `R00[1-7]` of the first version `V001` of any `.psd` file within the `C:\Users\User\*2021*` path if it exists.

The syntax uses regular expressions to parse strings (letters, numbers, symbols) the basics can be learned and practiced within a day, and will serve you endlessly when dealing with computers. Regular expressions and strings are everywhere, and what you can do with them can become insanely complex.

If you want to learn regular expressions in 4 hours, Joff Thyer's [Regular Expressions, Your New Lifestyle](https://www.antisyphontraining.com/regular-expressions-your-new-lifestyle-w-joff-thyer/) course is available on-demand.

