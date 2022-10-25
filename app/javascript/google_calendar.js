const date = () => {
  const submit = document.getElementById("g-button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();

    let confirmJdate = document.getElementById("json-dates");
    
    document.getElementById("g-button").submit("confirmJdate");
  });
};

window.addEventListener("load", date);