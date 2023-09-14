# WSL UBUNTU NOTES

## Installed Apps:

- Nautilus (`nautilus`)
	- GUI File Explorer
- Vim (`vim`)
	- Powerful code editor in terminal
- Nano (`nano`)
	- Simple in-terminal text editor
- Glow (`glow`)
	- In-terminal Markdown Viewer
- GNOME-Terminal (`gnome-terminal`)
	- Default Ubuntu Terminal App (GUI)
- NeoFetch (`neofetch)
	- Shows cool system information

## Customising the Shell

### Shell prompt text
[Link to Resource](https://wwwbaeldung.com/linux/customize-bash-prompt)
- Set the PS1 shell variable
	- e.g.: `PS1="$ "`
- To see the PS1 shell variable
	- `echo $PS1`
- Escape characters:
	- `\d`: Current Date
	- `\t`: Current Time
	- `\h`: Hostname of Linux Machine
	- `\u`: Username of logged in user
	- `\w`: Working directory
	- `\[`: Beginning of sequence of non-printable characters that control behaviour of terminal. End is `\]`

Default:
`PS1="\u@\h:\w$"`

My Config:
`PS1="\u@:\w$"`
