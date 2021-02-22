const initDisabledOptions = () => {
  const dopForm = document.querySelector("form#new_bicycle")
  if (dopForm) {
    const pills = dopForm.querySelectorAll(".pill-container input");
    console.log(pills)
    pills.forEach((pill) => {
      const dopIds = JSON.parse(pill.dataset.disabledIds)
      pill.addEventListener("click", () => {
        dopIds.forEach((dop) => {
          if (pill.checked)  {
            document.querySelector(`#option-${dop}`).disabled = true
          } else {
            document.querySelector(`#option-${dop}`).disabled = false
          }
        })
      });

      // console.log(pill.attributes["data-disabled-ids"].value)
    })
  }
}

export {initDisabledOptions}
