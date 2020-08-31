// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//


import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "radio_button", "clickable"]

  // connect() {
  //   console.log('Language displayed !')
  // }

  checkLevel(event) {
    console.log('test');

    const clickedElement = event.currentTarget;
    // on met tous les bouttons sans la classe active

    // on met la classe active sur celui qu'on veut
    this.clickableTargets.forEach(target => target.classList.remove('image-active'));
    clickedElement.classList.toggle('image-active');
    const currentId = clickedElement.dataset.id;
    this.radio_buttonTargets.forEach(radio_button => {
      if (radio_button.value === currentId) {
        radio_button.checked = !radio_button.checked;
      }
    });
  }
}
