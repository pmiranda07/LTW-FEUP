<section id="top_bar">
    <span id="new_project" onClick="new_project_click()">New Project</span>
    <form id="search_form">
      <input type="search" id="searchfield" placeholder="Search" oninput="updateProjects()">
    </form>
    <select id="filter">
      <option value="name">Name</option>
      <option value="category">Category</option>
      <option value="task">Task</option>
    </select>
</section>
