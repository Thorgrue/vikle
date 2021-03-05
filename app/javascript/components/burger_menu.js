const toggleMenu = () => {
  const button = document.querySelector('#burger-menu');
  const menu = document.querySelector('#menu');
  button.addEventListener("click", () => {
    menu.classList.toggle('hidden');
  });
}

export { toggleMenu };
