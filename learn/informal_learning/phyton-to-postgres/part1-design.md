## Designing the application

The following is my personal and slightly erratic take on how to go about designing a tiny app with only a few options for user interaction.  I don't follow a standard template for design, rather I seem to have encountered so many througout my career that I've made my own amalgamation of quite a few.

### Initial though process

The first steps are just ruminations and internal visualisations in my own head of what I would like a given piece of software to do.  Many ideas are turned over, some practical (it needs to accept all maners of characters and respect a line break), others are more impractical (any chance of linking it up with the coffee machine in order to have the coffee ready by the time I reach the kitchen).

Once I've mentally played with the ideas for a few days I do prefer to put an old fashioned pencil to paper and start to write my ideas down.  This is the phase where my eraser is in frequent use, and I constantly tell myself that I should do this on the computer, but I have yet to find a piece of software that is as flexible as three sheets of pristinly white A4 paper and a really sharp pencil.  You can doodle with a pencil while trying to find the perfect way to expres your thoughts, you can't really do that with a keyboard.

### Actual pen(cil) to paper

For this project I ended up with a list with two columns.  The first details the user interaction, the second what is then happening in the program in order to make it happen.  These were then divided into a version 1 and a version 2+, so basic functionality is in one list, and more elaborate functions are kept separate.  All of this is before thinking about any sort of interface, for now the whole project is a thing run either in jupyter notebook or directly from the command line.

| Python Side|Postgres Side |
|----------|----------|
| v.1 | v.1 |
|connect to ChatGPT <br>connect to the database <br>create question <br>-send to ChatGPT <br>-capture and send to db <br>get answer back <br>-capture as variable <br>-send to db |store questions <br>store answers <br>capture user data <br>generate a Q&A ID based on the userID|
| v.2 | v.2 |
|web front end <br>-login option <br>-pick either new question or archive <br>share QAs with other users |identify QA by user <br>option to share QA with other named user(s)/public|



<!-- TODO: transcribe the sheet here -->