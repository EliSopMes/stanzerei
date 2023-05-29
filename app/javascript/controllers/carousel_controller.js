import { Controller } from "@hotwired/stimulus"
import Swiper, { Navigation, Pagination } from 'swiper';

// Connects to data-controller="glider"
export default class extends Controller {

  static targets = ["swiper", "pago"]

  connect() {
    // console.log("Hello from Glider", this.swiperTarget, this.prevTarget)
    new Swiper(this.swiperTarget, {
      slidesPerView: 4,
      centeredSlides: true,
      spaceBetween: 30,
      grabCursor: true,
      pagination: {
        el: this.pagoTarget,
        clickable: true,
      },
    });
  }

}
