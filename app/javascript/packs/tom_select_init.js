import TomSelect from "tom-select"

const initSelectInputs = () => {
  const selects = document.querySelectorAll(".select-options")
  const multiSelects = document.querySelectorAll(".multi-select-options")
  new TomSelect(selects[selects.length - 1])
  new TomSelect(multiSelects[multiSelects.length - 1], { plugins: ["remove_button"]})
}

const initTomSelect = () => {
  const form = document.querySelector("#disable_option_form")
  if (form) {
    form.addEventListener('cocoon:after-insert', () => {
      initSelectInputs()
    })
  }
}

export {initTomSelect}
