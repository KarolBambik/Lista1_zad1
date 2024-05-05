terraform{
	backend "local" {
		path ="/.terraform.tfstate" 
		}
}

resource "local_file" "fun_hello"{
	content = "print('${var.text}')"
	filename = "${var.path}"
}
