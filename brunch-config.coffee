exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'js/vendor.js': (path) ->
          /^bower_components/.test(path) and not /modernizr/.test(path)
        'js/modernizr.js': (path) ->
          /^bower_components/.test(path) and /modernizr/.test(path)
        'js/app.js': /^app/
    stylesheets:
      joinTo: 'css/app.css'
    templates:
      joinTo: 'js/app.js'
  plugins:
    coffeescript:
      bare: false
  modules:
    wrapper: false
