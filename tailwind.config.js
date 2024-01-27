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
  ],
  theme: {
    extend: {
      fontFamily: {
        reforma: ['Reforma2018Gris', 'sans-serif'],
      },
      backgroundImage: {
        'home-main': `linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('../images/media/index-bg.jpg')`,
      },
    },
  },
  plugins: [],
};
