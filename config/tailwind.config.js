const irelia = require('@kiqr/irelia-tailwind');

module.exports = {
  content: [
    './public/*.html',
    './app/**/*.{erb,haml,html,slim}',
    irelia.contentPath
  ],
  presets: [
    irelia.preset({
      baseFontSize: '13.5px',
      colors: {
        primary: 'cyan',
        secondary: 'fuchsia',
        neutral: 'slate',
        dark: 'slate'
      }
    })
  ],
}
