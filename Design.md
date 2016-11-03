# Making Stuff Showcase

## Plan

- Apple TV app
- GitHub for storage
	- Simple zip file download
	- Local cache of the data in the Documents folder
	- Contribute projects as pull requests
		- DRI (kevinc) can review and merge
		- In order to preview, can select a branch to clone in the simulator
- Folder per project
	- title = folder name
	- description = description.txt
	- contributors = contributors.txt
		- each line is a willowtreeapps.com email address
		- look up full names and icons from
			- slack?
			- google account?
			- gravatar?
	- media
		- movies = all .mp4 in alphanumeric order
		- images = all .jpg, .png in alphanumeric order
	- A project is valid when it has a title, description, at least one contributor, and at least one item of media

## Screens

- Project list panel
	- Given all projects, sorted alphabetically
	- Layout
		- Vertical table view of projects
		- Project cell just has a title
		- Settings or Reload cells could be at the bottom of the list
	- Presented over the left edge of the Project screen
	- Interaction
		- First project is initially focused
		- Swipe vertically to select another project
			- Project screen, displayed behind, scrolls or crossfades when you do this
		- Click to dismiss and reveal the project screen
		- Press Menu to leave the app
- Project screen
	- Given a project
	- Layout
		- Vertical collection view of projects
		- Project cell (size of the whole screen)
			- Title, centered
			- Media (movies, then images) in a horizontal scrolling list
				- Movies autoplay but are muted in this view
			- Bottom frame autoscrolls vertically
				- Contributors (avatar and name) and description text
	- Interaction
		- First media item is initially focused
		- Swipe horizontally to move between media items
		- Press Menu to slide out the project list panel
		- Swipe vertically to slide out the project list panel and select the next/previous project
		- Select a media item to view it full screen
		- After a set time delay with no interaction, show the next project, or a random project
- Media screen
	- Given a list of media and an index
	- Layout
		- Horizontal collection view of letterboxed media items
	- Interaction
		- Swipe horizontally to view other items
			- Also affects focus on project screen
		- Press Menu to dismiss back to the project screen
