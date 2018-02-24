// assets/build.js
const path = require('path');
const fs = require('fs');
const babelify = require('babelify');
const exorcist = require('exorcist');
const browserify = require('browserify');

const babelrc = {
  "presets": [
    ["env", {
      "targets": {
        "browsers": ["last 2 Chrome versions"]
      }
    }]
  ]
};

const config = {
  ignore: ['**/deps/**','**/node_modules/**']
};

const resolve = segment => path.resolve(__dirname, segment);
const target = fs.createWriteStream(resolve('../priv/static/js/app.js'));
const mapPath = resolve('../priv/static/js/app.js.map');
browserify({debug: true}) // turn on source maps
  .add(resolve('./js/app.js'))
  // .add(resolve('./js/socket.js'))
  // .add(resolve('../deps/phoenix_html/priv/static/phoenix_html.js'))
  // .add(resolve('../deps/phoenix/priv/static/phoenix.js'))
  .transform(babelify.configure(config), babelrc)
  .bundle()
  .pipe(exorcist(mapPath))
  .pipe(target);
