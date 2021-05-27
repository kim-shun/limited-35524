// function post (){
//   const submit = document.getElementById("submit");
//   submit.addEventListener("click", (e) => {
//     e.preventDefault();
//     const form = document.getElementById("form");
//     const formData = new FormData(form);
//     const XHR = new XMLHttpRequest();
//     XHR.open("POST", "messages", true);
//     XHR.responseType = "json";
//     XHR.send(formData);
//     console.log(formData)
//     // debugger
//     XHR.onload = () => {
//       console.log(XHR.response);
//       const list = document.getElementById("messages");
//       const item = XHR.response.message;
//       const html = `
//       <div class="message">
//       <div class="upper-message">
//         <div class="message-user">
//            ${item.user.nickname}
//         </div>
//         <div class="message-date">
//            l ${item.created_at}
//         </div>
//       </div>
//       <div class="lower-message">
//         <div class="message-content">
//           ${item.content}
//         </div>
//       </div>
//     </div>`;
//     list.insertAdjacentHTML("afterend", html);
//     };
//   });
// };

// window.addEventListener('load', post);