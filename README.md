# NpmScripts

1. Create new project:
    * `mix phx.new proj_name`
2. When asking to fetch dependencies say NO
3. `cd proj_name`
4. `mix deps.get`
5. Remove all brunch scripts and dependencies in package.json
6. copy package.json from this template project
7. `cd assets && npm run setup && npm install`
    * npm run setup does:
        * Deletes brunch-config.js
        * Changes css folder name to scss.
        * Changes extensions to scss and puts and underscore in front of phoenix.scss. 
        * Adds import statement on app.scss to import scss from \_phoenix.scss.
        * Creates priv/static/js folder and app.js inside that folder.
8. Copy build.js from this template project to your assets folder. Make sure you have also .eslintrc.\* and .babelrc config files there as well.
9. Install exit_on_eof (to end watchers when exiting phoenix):
    * $ npm install -g exit_on_eof
10. In your project config/dev.exs file, change watchers option to be the same as the current project.

This is supposed to be a basic configuration for development mode.
