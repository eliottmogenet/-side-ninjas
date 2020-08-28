// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//


import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "editLanguages", "editContainer" ]

  connect() {
  }

   cardReplace (event) {
      this.editLanguagesTarget.style.display = "none";
      this.editContainerTarget.style.display = "block";
   }
}
