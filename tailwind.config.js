module.exports = {
  content: [
    './_drafts/**/*.html',
    './_includes/**/*.html',
    './_layouts/**/*.html',
    './_pages/**/*.html',
    './_pages/**/*.md',
    './_posts/*.md',
    './*.md',
    './*.html',
    './404.md',
    './contact/**/*.md',
    './programmes/**/*.md',
    './mass-locations/**/*.md',
    './mass-schedule/**/*.md',
    './the-society/**/*.md',
  ],
  theme: {
    extend: {
      fontFamily: {
        reforma: ['Reforma2018Gris', 'sans-serif'],
        system: ['system-ui', 'sans-serif'],
      },
      colors: {
        brand: '#024f94',
      },
    },
  },
  plugins: [],
};
