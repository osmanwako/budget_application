import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loadfile"
export default class extends Controller {
  static targets = ["file", "image"]
  connect() {
  }

  setpreview() {
    let input = this.fileTarget;
    let image = this.imageTarget;
    let file = input.files[0];
    let reader = new FileReader();
    reader.onloadend = function () {
      image.src = reader.result;
    };
    if (file)
      reader.readAsDataURL(file);
    else
      image.src = "avator.png";

  }
}
