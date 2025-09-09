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
    './programme/**/*.md',
    './mass-location/**/*.md',
    './about/**/*.md',
    './documents/**/*.md',
    './en/**/*.md',
    './mass-schedule/**/*.md',
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
