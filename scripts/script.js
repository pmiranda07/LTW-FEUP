let addToDoForm = document.getElementById("add_todo_form");

let todo_items_ol = document.getElementById("todo_items");

let add_todo_item_button = document.getElementById("add_todo_item_button");

let submit_todo_button = document.getElementById("submit_todo_button");

let todo_title = document.getElementById("todo_title");

let todo_category = document.getElementById("todo_category");

let todo_color = document.getElementById("todo_color");

let item_counter = 0;

let projectsSection = document.querySelector('section#projects');

if (projectsSection != null){
    updateProjects();
}

function encodeForAjax(data) {
    return Object.keys(data).map(function(k){
      return encodeURIComponent(k) + '=' + encodeURIComponent(data[k])
    }).join('&');
  }

if (add_todo_item_button != null){
    add_todo_item_button.addEventListener('click',(event)=>{
        event.preventDefault();
        console.log("Button clicked");
        let newListItem = document.createElement("li");
        let newTextInput = document.createElement("input");
        let dateDueInput = document.createElement("input");
        let priorityInput = document.createElement("input");
        newTextInput.setAttribute("type","text");
        newTextInput.setAttribute("placeholder","add your item");
        newTextInput.style.backgroundColor = "rgb(0,255,0)";
        dateDueInput.setAttribute("type","date");
        priorityInput.setAttribute("type","number");
        priorityInput.setAttribute("min","1");
        priorityInput.setAttribute("max","10");
        priorityInput.setAttribute("step","1");
        priorityInput.setAttribute("value","1");
        priorityInput.addEventListener('input',event => {
            console.log("priority changed");
            newTextInput.style.backgroundColor = getRGBForPriority(priorityInput.value);
        });

        newListItem.appendChild(newTextInput);
        newListItem.appendChild(dateDueInput);
        newListItem.appendChild(priorityInput);
        todo_items_ol.appendChild(newListItem);

        submit_todo_button.disabled = false;
        item_counter++;
    });
}



if (submit_todo_button != null){
    submit_todo_button.addEventListener('click',(event)=>{
        event.preventDefault();
        let list_item_values = [];
        let list_items = todo_items_ol.children;
        for (let i = 0; i < list_items.length; i++){
            let inputs = list_items[i].children;
            list_item_values.push({
                text:inputs[0].value,
                datedue:inputs[1].value,
                priority:inputs[2].value
            });
        }
        let get_encoded = encodeForAjax({
            title: todo_title.value,
            category: todo_category.value,
            color:todo_color.value,
            items:JSON.stringify(list_item_values)
        });
        console.log("GET_ENCODED:" + get_encoded);
        let request = new XMLHttpRequest();
        request.onload = requestListener;
        request.open("get", "action_save_list.php?" + get_encoded ,true);
        request.send();
        console.log("submit clicked");


    });
}


function requestListener () {
    console.log(this.responseText);
}

function getRGBForPriority(priority){
    let priorityInt = parseInt(priority);
    let gComponent, rComponent;
    if (priorityInt < 6){
        gComponent = 255;
        rComponent = Math.floor((priorityInt - 1)/4 * 255);
    }else{
        rComponent = 255;
        gComponent = Math.floor((priorityInt -6)/4 * (-204) + 204);
    }
    return "rgb(" + rComponent + "," + gComponent + ",0)";
}

function new_project_click(){
    console.log("new project clicked");
}

function onProjectsLoaded(){
    let search_bar_value = document.getElementById("searchfield").value;
    let filter = document.getElementById('filter');
    let filter_value= filter.options[filter.selectedIndex].text;
    let projects= JSON.parse(this.responseText);
    if (search_bar_value.length > 0){
      if(filter_value == "Name"){
        projects = projects.filter(project =>
            project.name.toLowerCase().startsWith(search_bar_value.toLowerCase()));
          }
          else if (filter_value == "Category"){
            projects = projects.filter(project =>
                project.category.toLowerCase().startsWith(search_bar_value.toLowerCase()));
          }
    }
    //console.log(projects);
    clearProjectsDisplay();
    createProjects(projects);
}

function clearProjectsDisplay(){
  while(projectsSection.hasChildNodes()){
    projectsSection.removeChild(projectsSection.lastChild);
  }
}

function updateProjects(){
   let request = new XMLHttpRequest();
   request.onload = onProjectsLoaded;
   request.open("get", "action_get_user_projects.php",true);
   request.send();
}

function createProjects(projects){
    projects.forEach(project => {
        let article = document.createElement("article");
        article.setAttribute("class","projects round_corners");
        article.setAttribute("id",project.id);
        article.style.backgroundColor=project.color;
        let header = document.createElement("header");
        header.setAttribute("id","project");
        let h3 =document.createElement("h3");
        h3.innerHTML=project.name;
        let project_creator = document.createElement("span");
        project_creator.setAttribute("id","project_creator");
        project_creator.innerHTML= "Created By: " + project.creator;
        let project_category = document.createElement("span");
        project_category.setAttribute("id","project_category");
        project_category.innerHTML= "Category: " + project.category;
        let num_tasks = document.createElement("span");
        num_tasks.setAttribute("class","round_corners");
        num_tasks.setAttribute("id","num_tasks");
        num_tasks.innerHTML= "Created By: " + project.creator;
        let tasks_section = document.createElement("section");
        tasks_section.setAttribute("class","tasks round_corners");
        let tasks = project.tasks;
        tasks.forEach(task =>{
            let task_div = document.createElement("div");
            task_div.setAttribute("class","task");
            task_div.setAttribute("id",task.id);
            let task_span = document.createElement("span");
            task_span.innerHTML = task.information;
            let trash_icon = document.createElement("i");
            trash_icon.setAttribute("class","fa fa-trash");
            trash_icon.setAttribute("aria-hidden","true");
            tasks_section.appendChild(task_div);
            tasks_section.appendChild(task_span);
            tasks_section.appendChild(trash_icon);
        });
        article.appendChild(header);
        header.appendChild(h3);
        article.appendChild(project_category);
        article.appendChild(project_creator);
        article.appendChild(num_tasks);
        article.appendChild(tasks_section);

        projectsSection.appendChild(article);
    });
}
