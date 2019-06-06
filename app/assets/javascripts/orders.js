var items = 1;
var options = null;

function removeItem(obj){
	items--;
	var div = obj.parentNode.parentNode;
	div.parentNode.removeChild(div);
}

function addItem(obj){
	if (options == null)
		options = $('#0').html();

	items++;

	// Divs
	var ojbTo = document.getElementById('items');
	var rowDiv = document.createElement('div');
	var colDiv = document.createElement('div');
	var col2Div = document.createElement('div');
	var col3Div = document.createElement('div');
	var groupDiv = document.createElement('div');
	var group2Div = document.createElement('div');
	rowDiv.setAttribute("class", "row");
	colDiv.setAttribute("class", "col-md-7");
	col2Div.setAttribute("class", "col-md-3");
	col3Div.setAttribute("class", "col-md-2");
	groupDiv.setAttribute("class", "form-group");
	group2Div.setAttribute("class", "form-group");

	// Fields
	var label = document.createElement('label');
	var label2 = document.createElement('label');
	var label3 = document.createElement('label');
	var br = document.createElement('br');
	var i = document.createElement('i');
	var select = document.createElement('select');
	var input = document.createElement('input');
	label.innerHTML = "Seleccionar elemento";
	label2.innerHTML = "Cantidad";
	label3.innerHTML = "X";
	label3.setAttribute("style", "color: white;");
	select.setAttribute("class", "form-control");
	select.setAttribute("name", "order[items][][id]");
	select.setAttribute("required", true);
	select.innerHTML = options;
	input.setAttribute("class", "form-control");
	input.setAttribute("name", "order[items][][quantity]");
	input.setAttribute("required", true);
	input.setAttribute("type", "number");
	i.setAttribute("class", "fa fa-minus-circle fa-2x pointer");
	i.setAttribute("style", "color: red;");
	i.setAttribute("onclick", "removeItem(this);");

	// Append sections
	groupDiv.appendChild(label);
	group2Div.appendChild(label2);
	groupDiv.appendChild(select);
	group2Div.appendChild(input);
	colDiv.appendChild(groupDiv);
	col2Div.appendChild(group2Div);
	col3Div.appendChild(label3);
	col3Div.appendChild(br);
	col3Div.appendChild(i);
	rowDiv.appendChild(colDiv);
	rowDiv.appendChild(col2Div);
	rowDiv.appendChild(col3Div);
	ojbTo.appendChild(rowDiv);
}