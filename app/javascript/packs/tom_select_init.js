import TomSelect from "tom-select"

const initSelectInputs = () => {
  const selects = document.querySelectorAll(".select-options")
  const multiSelects = document.querySelectorAll(".multi-select-options")
  new TomSelect(selects[selects.length - 1])
  new TomSelect(multiSelects[multiSelects.length - 1])
}

const initTomSelect = () => {
  const form = document.querySelector("#disable_option_form")
  form.addEventListener('cocoon:after-insert', () => {
    initSelectInputs()
  })
  initSelectInputs()
}

export {initTomSelect}
