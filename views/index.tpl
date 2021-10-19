<!doctype html>
<html ng-app>

<head>
  <title>TODO</title>
  <script src='/static/js/angular.min.js'></script>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
  <script src='/static/js/todo.js'></script>
  <link rel='stylesheet' href='/static/css/todo.css'>
</head>

<body>
<div class='container' ng-controller='TaskCtrl'>
  <h1 class='charcoal rounded-box'>ToDo</h1>

  <h2>Tasks</h2>

  <ul class='grey rounded-box'>
    <li ng-repeat='t in tasks' ng-class='{done: t.Done}' ng-click='toggleDone(t)'>
      <span class='checkbox'></span>{{t.Title}}
    </li>
  </ul>

  <form>
    <input type='text' class='rounded-box' placeholder='add new todo here' ng-model='todoText'>
    <button class='grey rounded-box' ng-click='addTodo()' ng-disabled='working'>New Task</button>
  </form>

  <img class='spinner' src='/static/img/spinner.gif' alt='Loading' ng-class='{working: working}'/>
</div>
</body>
</html>