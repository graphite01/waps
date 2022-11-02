const buildHTML = (XHR) => {
  const item = XHR.response.comment;
  const datetime = new Date (item.created_at)
  const datemonth = datetime.getMonth() + 1;
  const dateday = datetime.getDate();
  const datehour = datetime.getHours();
  const datemin = datetime.getMinutes();
  const month = datemonth.toString();
  const day = dateday.toString();
  const hour = datehour.toString();
  const min = datemin.toString();
  const userIdname = document.getElementById("current_username")
  const username = userIdname.textContent
  const html = `
    <div class="comment-date-times">${month}月${day}日${hour}:${min}</div>
    <div class="comment-contents">${item.content}</div>
    <div class="comment-user-name">${username}</div>`;
  return html;
};

function comment (){
  const submit = document.getElementById("comment-submit");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const form = document.getElementById("comment-form");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/comments", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      if (XHR.status != 200) {
        alert(`Error ${XHR.status}: ${XHR.statusText}`);
        return null;
      };
      const plasc = document.getElementById("plascomment");
      const formText = document.getElementById("form-comment-content");
      plasc.insertAdjacentHTML("beforeend", buildHTML(XHR));
      formText.value = ""
    };
  });
};

window.addEventListener('load',comment);