# vimdows

A small batch file for opening Windows files in WSL vim.

Setting this as the default program for a file type (**Properties -> Opens with -> Change**) enables you to easily use your WSL's vim as your editor in Windows. It also works from the Windows command line.

Requires WSL 2 and Windows Terminal.

Edit *default-save-location* to change the working directory for vim when no file is provided (otherwise the working directory is wherever the opened file resides).

(Note: This reads from the mounted Windows file system, and WSL 2 isn't designed for fast filesystem interoperability. For some use cases, it may still be ideal to move the files into the WSL directory manually and edit them from within the WSL filesystem, although so far I haven't come across any human-perceptible slowdown.)