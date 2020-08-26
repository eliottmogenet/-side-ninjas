// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//


import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "checkbox" ]

  // connect() {
  //   console.log('Language displayed !')
  // }

  checkLanguage(event) {
    const clickedElement = event.currentTarget;
    clickedElement.classList.toggle('image-active');
    const currentId = clickedElement.dataset.id;
    this.checkboxTargets.forEach(checkbox => {
      if (checkbox.value === currentId) {
        checkbox.checked = !checkbox.checked;
      }
    })
  }
}
