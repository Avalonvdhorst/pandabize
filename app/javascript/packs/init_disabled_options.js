const initDisabledOptions = () => {
  const dopForm = document.querySelector(".card-grid")
  if (dopForm) {
    const pills = dopForm.querySelectorAll(".pill-container input");
    pills.forEach((pill) => {
      const dopIds = JSON.parse(pill.dataset.disabledIds)
      console.log(dopIds)
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
