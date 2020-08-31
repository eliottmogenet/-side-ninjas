import Typed from 'typed.js';

const loadDynamicBannerText = () => {
// <<<<<<< HEAD
//   const element = document.getElementById("banner-typed-text")
//   if (element) {
// =======
  const banner = document.querySelector('#banner-typed-text');

  if (banner) {
// >>>>>>> master
    new Typed('#banner-typed-text', {
      strings: ["Improve your skills", "Select your language"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
