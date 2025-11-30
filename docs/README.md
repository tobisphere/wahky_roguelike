# Wahky Rogue-like

Wahky rogue-like is a game where you have to survive the highschool experience. 

# Organization

There are a few rules we apply to keep the files organized. 
https://docs.godotengine.org/en/stable/tutorials/best_practices/project_organization.html

Quick notes:

We use a by scene approach and group assets as close to scenes as possible

- Use snake_case for folder and file names (with the exception of C# scripts). 
	This sidesteps case sensitivity issues that can crop up after exporting a project on Windows. 
	C# scripts are an exception to this rule, 
	as the convention is to name them after the class name which should be in PascalCase.

- Use PascalCase for node names, as this matches built-in node casing.

- In general, keep third-party resources in a top-level addons/ folder, even if they aren't editor plugins. 
	This makes it easier to track which files are third-party. 
	There are some exceptions to this rule; for instance, if you use third-party game assets for a character, 
	it makes more sense to include them within the same folder as the character scenes and scripts.
