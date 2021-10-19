package controllers

import (
	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}
type Human struct{
	name string
	age init
	phone string
}
func (h Human) String() string{
	return h.name+h.age+h.phone
}
func (c *MainController) Get() {
	Bob := Human{"Anson",40,"09xx-xxx-xxx"}
	fmt.Println("This Human is : ",Bob)
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}
