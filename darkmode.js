var root = document.documentElement,
  theme = window.getComputedStyle(root)
    .getPropertyValue('--light') === ' ' ? 'dark' : 'light';

document.getElementById('toggle-theme')
  .addEventListener('click', toggleTheme);

function toggleTheme() {
  root.classList.remove(theme);
  theme = (theme === 'dark') ? 'light' : 'dark';
  root.classList.add(theme);
}