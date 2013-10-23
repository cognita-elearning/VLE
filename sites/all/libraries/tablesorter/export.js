$("#export").live('click',function(e) {
	var tablica=document.getElementById('reportTablica').rows;
	var tablicaExport=document.createElement("table");
	tablicaExport.setAttribute("id", "tablicaZaExport");
	tablicaExport.setAttribute("style", "display:none");
	
	for(var i=0;i<tablica.length;i++){
		var klasa=tablica[i].className;
		if(klasa.localeCompare('odd filtered') & klasa.localeCompare('even filtered') & klasa.localeCompare('tablesorter-filter-row')){
		var redak=document.createElement("tr");
		tablicaExport.appendChild(redak);
			var polja=tablica[i].cells;
			for(var j=0;j<polja.length;j++){
				var polje=document.createElement("td");
				redak.appendChild(polje);
				//var vrijednost=document.createTextNode((polja[j].innerText || polja[j].textContent));
				if(polja[j].innerText){
					polje.innerText=polja[j].innerText.trim();
				}else{
					polje.textContent=polja[j].textContent.trim();
				}
				
				//var vrijednost=(polja[j].innerText || polja[j].textContent);
				//polje.innerHTML=vrijednost.trim();
			}
		}
	}
	document.getElementById('exportDiv').appendChild(tablicaExport);
	convertCSV(document.getElementById('tablicaZaExport'));
});

function convertCSV(gTable){
var r  = 0;
numofRows = gTable.rows.length-1;
var tempdata="";
var cntrows = 0;
for ( r == 0; r <= numofRows; r++) {
	numofCells =  gTable.rows[r].cells.length-1 ;
     var c =0;
     for (c == 0; c<=numofCells; c++) {
        if (c != numofCells) {
			if(gTable.rows[r].cells[c].innerText){
				tempdata+= gTable.rows[r].cells[c].innerText + ",";
				//alert(tempdata);
			}else{
				tempdata+= gTable.rows[r].cells[c].textContent + ",";
			}
        }else{
			if(gTable.rows[r].cells[c].innerText){
				tempdata+= gTable.rows[r].cells[c].innerText + "\n";
			}else{
				tempdata+= gTable.rows[r].cells[c].textContent + "\n";
			}
             //tempdata+= gTable.rows[r].cells[c].innerText + "\n" || gTable.rows[r].cells[c].textContent + "\n";
        }
          }
}

// var reportName=document.getElementById('reportName').value;
// if(!reportName){
	// reportName="report";
// }
document.getElementById('tekstPolje').value=tempdata;
document.forms["formaExport"].submit();
var x=document.getElementById("tablicaZaExport");
x.remove(x.selectedIndex);
//var encodedUri = encodeURIComponent(tempdata);
//var link = document.createElement("a");
//link.setAttribute("href", "data:text/csv;charset=utf-8," + encodedUri);
//link.href="data:text/vnd.ms-excel;charset=utf-8," + encodedUri;
//link.setAttribute("download", reportName+".csv");
//link.download=reportName+".csv";

//document.getElementById('exportDiv').appendChild(link);


//window.open("data:text/csv;charset=utf-8," + encodedUri);
//document.write(tempdata);
//link.click(); 

//document.getElementById('exportDiv').removeChild(link);
//document.location.reload(true);
}
