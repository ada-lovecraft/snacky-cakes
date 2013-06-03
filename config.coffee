exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test[\\/](?!vendor)/
        'test/javascripts/test-vendor.js': /^test[\\/](?=vendor)/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.9.1.js',
          'vendor/scripts/underscore-1.4.4.js',
          'vendor/scripts/backbone-1.0.0.js',
          'vendor/scripts/backbone-mediator.js',
          
          # These must come before the rest of the Bootstrap JS becasue of dependencies
          'vendor/scripts/bootstrap/bootstrap-tooltip.js',
          'vendor/scripts/bootstrap/bootstrap-transition.js',
          
          'vendor/scripts/bootstrap/bootstrap-affix.js',
          'vendor/scripts/bootstrap/bootstrap-alert.js',
          'vendor/scripts/bootstrap/bootstrap-button.js',
          'vendor/scripts/bootstrap/bootstrap-carousel.js',
          'vendor/scripts/bootstrap/bootstrap-collapse.js',
          'vendor/scripts/bootstrap/bootstrap-dropdown.js',
          'vendor/scripts/bootstrap/bootstrap-modal.js',
          'vendor/scripts/bootstrap/bootstrap-popover.js',
          'vendor/scripts/bootstrap/bootstrap-scrollspy.js',
          'vendor/scripts/bootstrap/bootstrap-tab.js',
          'vendor/scripts/bootstrap/bootstrap-typeahed.js',
        ]
        after: [
          'test/vendor/scripts/test-helper.js'
        ]

    stylesheets:
      defaultExtension: 'less'
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
          before: ['vendor/styles/bootstrap/bootstrap.less']

    templates:
      joinTo: 'javascripts/app.js'

  plugins:
    static_jade:
      pretty: yes
      extension: ".jade"
      path: '/app/assets'
      locals:
        title: "Snacky Cakes"
