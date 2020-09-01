// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//


import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "checkbox", "images" ]

  connect() {
    this.imagesTargets.forEach(image => {
      this.checkboxTargets.forEach(checkbox => {
        if (checkbox.checked && checkbox.value === image.dataset.id) {
          image.classList.toggle('image-active');
        }
      })
    })
  }

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
