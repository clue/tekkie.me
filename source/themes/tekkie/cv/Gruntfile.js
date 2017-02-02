module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		sass: {
			dist: {
				files: {
					'assets/css/style.css' : 'assets/sass/style.scss'
				}
			}
		},
		watch: {
			css: {
				files: '**/*.scss',
				tasks: ['sass']
			}
		},
		copy: {
			main: {
				files: [
					{expand: true, cwd: 'node_modules/flag-icon-css', src: ['flags/**'], dest: 'assets/'},
					{expand: true, cwd: 'node_modules/flag-icon-css', src: ['css/**'], dest: 'assets/'}
				]
			}
		}
	});
	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-copy');
	grunt.registerTask('default',['watch', 'copy']);
}
