package routers

import (
	"beego/controllers"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	beego.Router("/task/",&controllers.TaskController{},"get:ListTasks;post:NewTask")
	beego.Router("/task/:id:int", $controllers.TaskController{},"get:GetTask;put:UpdateTask")
}
