module.exports = function (grunt) {
  // load plugins 
  [ 'grunt-cafe-mocha' ].forEach(function (task) { grunt.loadNpmTasks(task); });
  // configure plugins 
  grunt.initConfig({ cafemocha: { all: {
                                        src: 'test/*.coffee',
  				   					                  options: { ui: 'tdd', compilers: "coffee:coffee-script/register" }
                                       }
                                },
                    });
  // register tasks
  grunt.registerTask('default', ['cafemocha']);
};