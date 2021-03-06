<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang='en'>
    <head>
        <meta charset='UTF-8'>
        <title>Main</title>
        <script src="<%=request.getContextPath() %>/resources/js/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/core.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/core-main.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/sub-01.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/sub-02.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/sub-03.css">
        <link href="<%=request.getContextPath() %>/resources/summerNote/summernote-lite.min.css" rel="stylesheet">
    	<script src="<%=request.getContextPath() %>/resources/summerNote/summernote-lite.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/js/common.js"></script>
        <script src="https://kit.fontawesome.com/b6e2c7fefa.js" crossorigin="anonymous"></script>
        
   </head>
<script>
  

</script>

<body >
	<form action="<%=request.getContextPath() %>/setle/regist" method="post" id="submitForm" enctype="multipart/form-data">
       <div class="wrap">
        <div class="top-bar flex ju-sp-bt al-it-ce">
            <%@ include file="/WEB-INF/include/topbar.jsp" %>
        </div>

            <div class="container flex">
             

            <div class="content">
                <div class="approval-wrap">
                    <div class="approval-regist">
                        <div class="approval-title flex al-it-ce">
                            <i class="fa-solid fa-file-pen"></i>
                            ${setle.setleSj }
                        </div>

                        <div class="approval-content flex ju-sp-bt">
                            <div class="app-con con01">
                                <div class="app-tab con01 flex ju-sp-bt al-it-ce">
                                    <ul class="flex">
                                        <li><a href="#tab01" class="active">????????????</a></li>
                                        <li><a href="#tab02" id="setleFormView">??????</a></li>
                                    </ul>

                                    <div class="all-down">
                                        <span>?????? ????????????</span>
                                    </div>
                                </div>

                                <div class="app-tabcontent">
                                    <div id="tab01">
                                       
										<c:forEach var="attach" items="${setle.setleAttachList }">
                                        <div class="file flex al-it-ce" role="fileListView" >
                                            <i class="fa-solid fa-file-lines"></i>
                                            <span>${attach.originalname }</span>
                                            <i class="fa-solid fa-download"></i>
                                            
                                        </div>
                                        </c:forEach>
                                        

                                        <div class="detail-con">
                                            <div class="de-top flex al-it-ce">
                                                <i class="fa-solid fa-list"></i> 
                                                <span>${setle.writerEmpVO.name }??? ?????? ?????????</span>
                                            </div>

                                            <div class="de-bot flex">
                                                <div class="de-userinfo">
                                                <div class="user-img">
                                                    </div>

                                                    <div class="user-detail">
                                                        <h4>
                                                            ??????????????? ??????
                                                        </h4>

                                                        <ul>
                                                            <li>
                                                                <em>Feed</em>
                                                                <span><i class="fa-solid fa-heart"></i>????????? ????????????</span>
                                                            </li>

                                                            <li>
                                                                <em>Email</em>
                                                                <span><i class="fa-solid fa-envelope"></i>${setle.writerEmpVO.email }</span>
                                                            </li>

                                                            <li>
                                                                <em>????????????</em>
                                                                <span><i class="fa-solid fa-phone"></i> ${setle.writerEmpVO.phone }</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>

                                                <div class="de-con">
                                                    <div class="wri-info flex ju-sp-bt al-it-ce">
                                                        <div class="de-name">
                                                            <h1>${setle.writerEmpVO.name }</h1>
                                                            <span>${setle.writerEmpVO.ncnm }</span>
                                                        </div>

                                                        <div class="de-part">
                                                            <span><i class="fa-solid fa-briefcase"></i>${setle.writerEmpVO.dept }</span>
<!--                                                             <em>?????????1???</em> -->
                                                        </div>
                                                    </div>

                                                    <div class="re-detail">
                                                        <ul>
                                                            <li>
                                                                <i class="fa-solid fa-pen"></i>
                                                                ????????? : 
                                                                <span><fmt:formatDate value="${setle.writngOn }" pattern="yyyy.MM.dd"/></span>
                                                            </li>

                                                            <li>
                                                                <i class="fa-solid fa-calendar-days"></i>
                                                                ???????????? :
                                                                <fmt:formatDate value="${setle.evlStartDate }" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${setle.evlEndDate }" pattern="yyyy.MM.dd"/> 
                                                            </li>

                                                            
                                                            <li>
                                                                <i class="fa-solid fa-users"></i>
                                                                ???????????? :
                                                                <span>???????????? (30)</span>
                                                            </li>

                                                            <li>
                                                                <i class="fa-solid fa-calendar-days"></i>
                                                                ???????????? :
                                                                <fmt:formatDate value="${setle.agrStartDate }" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${setle.agrEndDate }" pattern="yyyy.MM.dd"/>
                                                            </li>

                                                            <li>
<!--                                                                 <div class="flex al-it-ce mb-10"> -->
<!--                                                                 <i class="fa-solid fa-users" style="margin-right: 13px"></i> -->
                                                                
<!--                                                               ???????????? :   <div class="aggre-mem"> -->
<!--                                                                     <select id="depart-selector"> -->
<!--                                                                         <option>??????</option> -->
<%--                                                                         <c:forEach items="${departList}" var="depart"> --%>
<%--                                                                         	<option value="${depart.dept_nm }">${depart.dept_nm }</option> --%>
<%--                                                                         </c:forEach> --%>
<!--                                                                     </select> -->

<!--                                                                     <select id="depart-emp-seletor"> -->
<!--                                                                         <option value="notSelect">??????</option> -->
<!--                                                                     </select> -->

<!--                                                                     <button type="button" id="add-setle-emp"><i class="fa-solid fa-plus"></i></button> -->
<!--                                                                 </div> -->
<!--                                                                 </div> -->

                                                                <div class="se-mem" id="selected-depart-emp">
                                                               ???????????? :      
                                                               <c:forEach var="setleEmp" items="${setle.setleEmpList }">
                                                               <span class="seleted-emp-span">${setleEmp.empNm}</span>
                                                               </c:forEach>
<!--                                                                     <span>????????? <i class="fa-solid fa-xmark"></i></span> -->
<!--                                                                     <span>????????? <i class="fa-solid fa-xmark"></i></span> -->
                                                                </div>
                                                            </li>


                                                        </ul>
                                                    </div>

                                                    <div class="regist-box" id="regist-box">
                                                    <h4>????????????</h4>

                                                    
                                                        <div class="editor">
                                                            ${setle.setleCn }
                                                        </div>
	                                                    
                                                  	</div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div id="tab02">
                                       <c:forEach var="attach" items="${setle.setleAttachList }">
                                        <div class="file flex al-it-ce" role="fileListView" >
                                            <i class="fa-solid fa-file-lines"></i>
                                            <span>${attach.originalname }</span>
                                            <i class="fa-solid fa-download"></i>
                                        </div>
                                        </c:forEach>
                                        

                                        <div class="detail-con">
                                            <div class="de-top flex al-it-ce ju-sp-bt">
                                                <i class="fa-solid fa-list"></i> 
                                                <!-- <select id="formselect" onchange="formChange();">
                                                	<option value="form1" id="">???????????????</option>
                                                	<option value="form2" id="">???????????????</option>
                                                	<option value="form3" id="">???????????????</option>
                                                	<option value="form4" id="">?????????</option>
                                                	<option value="form5" id="">???????????????</option>
                                                </select> -->
                                                <div class="print">
                                                	<i class="fa-solid fa-print"></i>
                                                	<input type="button" id="formPrint" value="??????" >
                                                </div>
                                                
                                            </div>

                                            <div class="de-bot flex" style="overflow: scroll;" >
                                                <div id="setle-formdiv" style="heimin-height :297mm; min-width: 210mm;"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="app-con con02">
                                <div class="app-btntab">
                                    <ul class="flex ju-sp-bt">
                                        <li><a href="#agreTab01" class="on">??????</a></li>
                                        <li><a href="#agreTab02">??????</a></li>
                                    </ul>
                                </div>

                                <div class="comment-tab">
                                    <div id="agreTab01">
                                        <div class="agree-create">
                                            <button>?????? ??????</button>
                                        </div>

                                        <div class="agreement-btn flex ju-sp-bt">
                                            <button class="ag"><i class="fa-solid fa-handshake"></i> ??????</button>
                                            <button class="bk"><i class="fa-solid fa-arrow-rotate-left"></i>??????</button>
                                        </div>

                                        <div class="agree-cowrap">
                                            <div class="agreement-coment">
                                                <div class="ag-coment">
                                                    <div class="ag-mem flex al-it-ce ju-sp-bt">
                                                        <div class="flex al-it-ce">
                                                            <div class="modi-img"></div>
                                                            <div class="nick-name">?????????</div>
                                                            <span class="mytip">MY</span>
                                                        </div>

                                                        
                                                        <ul class="flex">
                                                            <li><i class="fa-solid fa-pen"></i></li>
                                                            <li><i class="fa-solid fa-xmark"></i></li>
                                                        </ul>
                                                    </div>

                                                    <div class="ag-con">
                                                        <div class="flex al-it-ce mb-20">
                                                            <span>????????????</span>
                                                            <ul class="flex">
                                                                <li><i class="fa-solid fa-star on"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                            </ul>
                                                        </div>

                                                        <div class="ag-result">
                                                            ?????? ?????? ??????????????????~
                                                        </div>
                                                        <em class="ag-date">2022. 01. 01</em>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="agreement-coment">
                                                <div class="ag-coment">
                                                    <div class="ag-mem flex al-it-ce ju-sp-bt">
                                                        <div class="flex al-it-ce">
                                                            <div class="modi-img"></div>
                                                            <div class="nick-name">?????????</div>
                                                            <span class="mytip">MY</span>
                                                        </div>

                                                    </div>

                                                    <div class="ag-con">
                                                        <div class="flex al-it-ce mb-20">
                                                            <select>
                                                                <option>????????????</option>
                                                                <option>????????????</option>
                                                            </select>
                                                            <ul class="flex">
                                                                <li><i class="fa-solid fa-star on"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                                <li><i class="fa-solid fa-star"></i></li>
                                                            </ul>
                                                        </div>

                                                        <div>
                                                            <textarea></textarea>
                                                        </div>

                                                

                                                        <div class="ag-btn">
                                                            <button>????????????</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div id="agreTab02">
                                        <div class="agree-cowrap-s">
                                            <div class="agreement-coment">
                                                <div class="ag-coment">
                                                    <div class="ag-mem flex al-it-ce ju-sp-bt">
                                                        <div class="flex al-it-ce">
                                                            <div class="modi-img"></div>
                                                            <div class="nick-name">?????????</div>
                                                            <span class="mytip">MY</span>
                                                        </div>

                                                        
                                                        <ul class="flex">
                                                            <li><i class="fa-solid fa-pen"></i></li>
                                                            <li><i class="fa-solid fa-xmark"></i></li>
                                                        </ul>
                                                    </div>

                                                    <div class="ag-con">

                                                        <div class="ag-result">
                                                            ?????? ?????? ??????????????????~
                                                        </div>
                                                        <em class="ag-date">2022. 01. 01</em>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="agreement-coment">
                                                <div class="ag-coment">
                                                    <div class="ag-mem flex al-it-ce ju-sp-bt">
                                                        <div class="flex al-it-ce">
                                                            <div class="modi-img"></div>
                                                            <div class="nick-name">?????????</div>
                                                            <span class="mytip">MY</span>
                                                        </div>

                                                    </div>

                                                    <div class="ag-con">

                                                        <div>
                                                            <textarea></textarea>
                                                        </div>

                                                

                                                        <div class="ag-btn">
                                                            <button>????????????</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        
                    </div>
                </div>

                
                <div class="page-btn flex ju-sp-ce">
                    <button type="button" class="back" onclick="backPage();">????????????</button>
                    <button type="button" class="regist" onclick="regist_setle();">????????????</button>
                </div>
            </div>

       </div>
      </div>
      <input type="hidden" value="${loginEmp.empl_no }" name="setleWriter">
      <input type="hidden" value="${loginEmp.dept }" name="writerDepart">
	  </form>
     <script>
      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
    <script>
    	var formdoc = "";
		
		var writedoc = "";
		var inputstrArr = [];
		var inputValues;
		
		function jsonToForm(jsonData){
    		writedoc = formdoc;
    		for(var key in jsonData){
    			var namestr = key
    			var valstr = jsonData[key];
    			writedoc = writedoc.replaceAll("{{"+namestr+"}}",valstr);
    		}
    		$('#setle-formdiv').html(writedoc);
    	}
    	
		
		$('#setleFormView').on("click",function(){
			$.ajax({
				type : "get",
				url : "formText",
				data : {unityFileNo : ${setle.setleForm.formFile}},
				dataType:"text",
				success: function(data){
					formdoc = data;
					
					jsonToForm(${setle.formInputs});
				},
				error : function(){
					console.log("?????? ????????????.");
				}
			});
		});
    
    	$('#formPrint').on("click",function(){
    		  let $container = $("#setle-formdiv").clone()    // ????????? ??? ?????? ?????? ??????
    		    let cssText = ""                            // ????????? ??????
    		    for (const node of $("style")) {
    		        cssText += node.innerHTML
    		    }
    		    /** ?????? */
    		    let innerHtml = $container[0].innerHTML
    		    let popupWindow = window.open("", "_blank", "width=700,height=800")
    		    popupWindow.document.write("<!DOCTYPE html>"+
    		      "<html>"+
    		        "<head>"+
    		        "<style>"+cssText+"</style>"+
    		        "</head>"+
    		        '<body style=" height :297mm; width: 210mm;"><div style="align:center;">'+innerHtml+'</body>'+
    		      "</html>")
    		   
    		    popupWindow.document.close()
    		    popupWindow.focus()

    		    /** 1??? ?????? */
    		    setTimeout(() => {
    		        popupWindow.print()         // ????????? ????????? ?????? ??????
    		        popupWindow.close()         // ????????? ?????? ????????? ?????? ?????? ??????
    		    }, 1000)

    	});
    	
    	
    	
    	function boundarySearch(str){
    		
    		var nowIndex = 0;
    		var searchStr = [];
    			
    		while(true){
    			
    			
    			
    			var sindex = str.indexOf("{{" , nowIndex);
    			nowIndex = sindex;
    			if(nowIndex==-1){
    				break;
    			}
    			var eindex = str.indexOf("}}", nowIndex);
    			nowIndex = eindex;
    			
    			searchStr.push(str.substring(sindex+2,eindex));
    		}
    		
    		var set = new Set(searchStr);
    		searchStr = [...set];
    		
    		return searchStr;
    	}
    	
    	
    	
    	$('#inputToForm').on('click',function(){
    		var input;
    		writedoc = formdoc;
    		for(var str of inputstrArr){
    			input = $("#"+str);
    			var namestr = $(input).attr('name');
    			var valstr = $(input).val();
    			writedoc = writedoc.replaceAll("{{"+namestr+"}}",valstr);
    			
    		}
    		
    		$('#setle-formdiv').html(writedoc);
    		
    		var formInputNode = document.querySelectorAll('input[role=formInputValues]');
			if(document.querySelector('input[name="formInputs"]')){
				var formInputValues = document.querySelector('input[name="formInputs"]');
			}else{
	    		var formInputValues = document.createElement("input");
				formInputValues.setAttribute("name","formInputs");
			}
			
			
			console.log(formInputValues.name);
			
			formInputValues.value = JSON.stringify(inputToJsonByName(formInputNode));
			
			$("#submitForm").append(formInputValues);
			
			
			
    		
    	});
    	
    	function checkInputHidden(str){
    		
    		var check = str.indexOf("??????") != -1;
    		check = check || (str.indexOf("??????") != -1);
    		
    		
    		
    		
    		return check;
    	}
    	
    	$('#formselect').on('change',function(){
    		
    		if(this.value == 1){
    			
    			
    			
    			var inputHtml = "";
    			
    			inputstrArr = boundarySearch(formdoc);
    			
    			for(var str of inputstrArr){
    				
    				if(checkInputHidden(str)){
    					inputHtml = inputHtml + "<input type='hidden' id="+str+" name="+str+" placeholder="+str+" role='formInputValues'/><br>";
    				}else if(str.indexOf("??????") != -1){
    					inputHtml = inputHtml + "<label>"+str+"</label><input type='date' id="+str+" name="+str+" placeholder="+str+" role='formInputValues'/><br>";
    				}else{
    				
    					inputHtml = inputHtml + "<input type='text' id="+str+" name="+str+" placeholder="+str+" role='formInputValues' /><br>"
    				
    				}
    				
    			}
    			
    			
    			
    			$('#formInput').html(inputHtml);
    			
    			
    		}
    	})
    	
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"  ></script>
	<script type="text/x-handlebars-template"  id="deparEmpList-selector-template" >
		{{#each .}}
			<option value={{this.empl_no}} class=appendDepartEmp>{{this.ncnm}}</option>
		{{/each}}
	</script>
	<script type="text/x-handlebars-template" id="selected-dpartEmp-template">
		<span class="seleted-emp-span" onclick='removeSelected(this);'>{{empName}}<i class="fa-solid fa-xmark"></i><input type="hidden" name="setleEmpList" value="{{empNo}}/{{empName}}"></span>
		
	</script>
	
	<script type="text/javascript">
		$('#depart-selector').on('change',function(){
			var depart = $(this).val();
			$.getJSON("<%=request.getContextPath()%>/emp/EmpListByDepart?depart="+depart,function(empList){
				var template=Handlebars.compile($('#deparEmpList-selector-template').html());
				
				var empHtml = template(empList);
				
				$('.appendDepartEmp').remove();
				$('#depart-emp-seletor').append(empHtml);
			});
			
		});
		
		$('#add-setle-emp').on("click", function(){
			console.log("??????");
			
			var template = Handlebars.compile($('#selected-dpartEmp-template').html());
			var empvalue = {
					empNo : $('#depart-emp-seletor').val() , 
					empName : $('#depart-emp-seletor  option:checked').text() 
			};
			
			
			var empHtml = template(empvalue);
			
			for(var ta of $('input[name=setleEmpList]')){
				if($(ta).val() == empvalue.empNo+"/"+empvalue.empName){
					return;
				}
			}
			
			if($('#depart-emp-seletor').val() == "notSelect"){
				return;
			}
			
			$('#selected-depart-emp').append(empHtml);
		});
		
		function removeSelected(ta){
			
			
			$(ta).remove();
			
		}
	</script>
	

	
	<script>

		function inputToJsonByName(inputs){
			
			var inputJson = {};
			
			for(var tag of inputs){
				inputJson[tag.name] = tag.value;
			}
			
			
			return inputJson;
		}
	
		function backPage(){
			window.history.go(-1);
			
			
			
		}
		
		function checkInputNull(){
			
			var check = true;
			// ?????? ??????
			
			
			
			return check;
			
		}
	
		function regist_setle(){
			
			

			
			$("#submitForm").submit();

		}
	
	</script>
	
	
	<script type="text/x-handlebars-template" id="attachView-template">
		{{#each fileArr}}
		 <div class="file flex al-it-ce" role="fileListView" onclick="ViewRemove(this)">
         	<i class="fa-solid fa-file-lines"></i>
         	<span>{{this.name}}</span>
         	<i class="fa-solid fa-xmark"></i>
         </div>
		{{/each}}

	</script>
	
	
<!-- 	???????????????????????? -->
	
	<script type="text/javascript">
	
	function printFileView(obj){
		var fileList = Array.from(obj.files)
		var template = Handlebars.compile($('#attachView-template').html());
		
		var fileArr = [];
		for(var file of fileList){
			fileArr.push({"name" : file.name})
		}
		
		var updateHtml = template({"fileArr":fileArr});
		
		$('div[role="fileListView"]').remove();
		$('#file-attach-div').after(updateHtml);
		
		
		
		
	}
	
	
	var input = document.createElement("input");	

	function fileAdd(){
		input = document.createElement("input");
		
		input.type = "file";
		input.multiple = "multiple";
		input.click();
		console.log(input.files.length);
		

		input.addEventListener("change", inputChange);
		
		
		
		
	}
	
    function validation(obj){
        const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
        if (obj.name.length > 100) {
            alert("???????????? 100??? ????????? ????????? ?????????????????????.");
            return false;
        } else if (obj.size > (100 * 1024 * 1024)) {
            alert("?????? ?????? ????????? 100MB??? ????????? ????????? ?????????????????????.");
            return false;
        } else if (obj.name.lastIndexOf('.') == -1) {
            alert("???????????? ?????? ????????? ?????????????????????.");
            return false;
        } else if (!fileTypes.includes(obj.type)) {
            alert("????????? ???????????? ????????? ?????????????????????.");
            return false;
        } else {
            return true;
        }
    }
	
	function inputChange(){
		
		
		var data = new DataTransfer();
		var files = document.querySelector('#file').files;
		files = Array.from(files);
		
		for(var file of Array.from(input.files)){
		
			if(validation(file)){
			
				files.push(file);
			}
		
		}
		
		if(files.length > 5){
			alert("??????????????? ?????? 5????????????.");
			return;
		} 
		for(var file of files){
			 data.items.add(file);
		}
		document.querySelector('#file').files = data.files;
		printFileView(document.querySelector('#file'));
	}
	
	
	
	
	
	var fileRemove = function(fileNum){ //fileNum??? li ??? index ??? 
		
		const dataTransfer = new DataTransfer(); 
		let files = $('#file')[0].files; 
		//???????????? ????????? ????????? ????????? ?????? 
		let fileArray = Array.from(files); 
		//????????? ????????? ????????? ????????? ??????(FileList -> Array) 
		fileArray.splice(fileNum, 1); 
		//???????????? index??? ????????? ???????????? ?????? 
		fileArray.forEach(file => { dataTransfer.items.add(file); }); 
		//?????? ????????? dataTransfer??? ??????(Array -> FileList) 
		$('#file')[0].files = dataTransfer.files; 
		//?????? ????????? FileList??? ????????? 
		

	
		
	}

	function ViewRemove(obj){
		var index = $('div[role="fileListView"]').index(obj);
		
		obj.remove();
		
		fileRemove(index);
		
	}
	
	
	
	</script>
	
</body>
</html>