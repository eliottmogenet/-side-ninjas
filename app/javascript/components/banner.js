import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const element = document.getElementById("banner-typed-text")
  if (element) {
    new Typed('#banner-typed-text', {
      strings: ["Improve your skills", "Select your language"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
