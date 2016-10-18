<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
    <script type="text/javascript">
        $(document).ready(function()
    {
        initSlideShow();
        
    });
    function initSlideShow()
    {
        if($(".slideshow div").length > 1)
        {
            var transationTime = 2000;
            $(".slideshow div:first").addClass('active');
            setInterval(slideChangeImage, transationTime);
        }
    }
    function slideChangeImage()
    {
        var active = $(".slideshow div.active");
        if(active.length == 0)
        {
            active = $(".slideshow div:last");
        }
        
        var next = active.next().length ? active.next() : $(".slideshow div:first");
        active.addClass('lastactive');
        next.css({opacity:0.0})
                .addClass('active')
                .animate({opacity:1.0}, 1500, function()
                {
                    active.removeClass("active lastactive");    
                });
         
    }
    </script>
    <style type="text/css">
   
  ul.nav-pills {
      top: 20px;
      position: fixed;
  }
  div.col-sm-9 div {
      height: 250px;
      font-size: 28px;
  }
  
  @media screen and (max-width: 810px) {
    #section1, #section2, #section3, #section41, #section42  {
        margin-left: 150px;
    }
  }

  </style>

</head>
<body style="background: url(images/background.jpg);">
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ielts" user="root" password="cong12"/>

<div class="container" style="background-color: white; ">
<div class="slideshow">
    <div><a href="#"><img src="images/slide_1.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_2.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_3.jpg" alt="" border="0" /></a></div>
</div>
<hr>
<div class="navbar navbar-default navbar-fixed-top" role="navigation" style="font-size: 17px" >
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="222.html"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
           <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nguyễn Văn A <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Xem thong tin ca nhan.html">Thông tin cá nhân</a></li>
                        <li class="divider"></li>
                        <li ><a href="111.html">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="222.html">Home</a></li>
                <li><a href="Gioi%20Thieu.html">Giới thiệu</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Online <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-level">
                      
                         <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Reading</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20hoc%20reading.html">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.html">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.html">IELTS 8.0</a></li>
                                           
                                    </ul>
                        </li>
                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Listening</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20listenning.html">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.html">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.html">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Speaking</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20speaking.html">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.html">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.html">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                       <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Writing</a>
                            <ul class="dropdown-menu">
                                <li><a href="click%20writing.html">IELTS 6.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.html">IELTS 6.0 - 8.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.html">IELTS 8.0</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>



                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Free Test <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="click Test Reading.html">Test Reading</a></li>
                        <li class="divider"></li>
                        <li ><a href="click Test Listening.html">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.html">Tài liệu</a></li>
                <li><a href="Tin Nhan Ho Tro.html">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>



<!--sdfsdf-->
 
 <ol class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li><a href="#">Free Test</a></li>
        <li><a href="#">READING</a></li>
    
    </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Practice Full Test IELTS Reading, Reading 4</h2></center></strong></div>
      <div class="panel-body">
        
        <br />
        <div data-spy="scroll" data-target=".navbar" data-offset="50">

            
              <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                  </button>
                 
                </div>
                <div>
                
                </div>

              </div>
               <sql:query var="result">
					select *
					from  ielts.passage_question_test_read,(select ielts.passagetestread.id id,content
					from ielts.passagetestread,(select testID id
							from ielts.tblbaitestreading
						where testID = 1) d1
					where passagetestread.id = d1.id) d2
					where passage_question_test_read.passageID = d2.id		
	</sql:query>
	
	<sql:query var="result2">
					select ielts.passagetestread.id id,content
					from ielts.passagetestread,(select testID id
							from ielts.tblbaitestreading
						where testID = 1) d1
					where passagetestread.id = d1.id		
	</sql:query>
	<%! int x = 1; %>
	<c:forEach var ="pro1" items = "${result2.rows}">
		<h1>Passage <%=x %></h1>
		<%x=x+1; %>
     	 <p class="text justify">
    		${pro1.content}
    	</p>
    	
    <br />
    
    <c:forEach var ="pro" items = "${result.rows}">
    <div class="row">
            <div class="col-md-6">
                <form>
                <b>1.${pro.title}?</b>
                <div class="radio">
                  <label><input type="radio" name="optradio">A ${pro.a} </label>
                </div>
                <div class="radio">
                  <label id="31"><input type="radio" name="optradio">B ${pro.b} </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">C ${pro.c} </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">D ${pro.d} </label>
                </div>
              </form>
          
            </div>
            <div class="col-md-6">
                
             
            </div>
        </div>
        </c:forEach>
	</c:forEach>
<!--  
<div id="section3" class="container-fluid">
  <h1>Passage 3 -</h1>
  <p class="text justify">
      Further evidence of this can be seen in studying sign languages for the deaf.  Sign languages are not simply a series of gestures; they utilise the same grammatical machinery that is found in spoken languages.  Moreover, there are many different languages used worldwide. The creation of one such language was documented quite recently in Nicaragua. Previously, all deaf people were isolated from each other, but in 1979 a new government introduced schools for the deaf.  Although children were taught speech and lip reading in the classroom, in the playgrounds they began to invent their own sign system, using the gestures that they used at home.  It was basically a pidgin.  Each child used the signs differently, and there was no consistent grammar.  However, children who joined the school later, when this inventive sign system was already around, developed a quite different sign language.  Although it was based on the signs of the older children, the younger children's language was more fluid and compact, and it utilised a large range of grammatical devices to clarify meaning.  What is more, all the children used the signs in the same way.  A new creole was born.<br/><br />

    Some linguists believe that many of the world's most established languages were creoles at first.  The English past tense –ed ending may have evolved from the verb 'do'.  'It ended' may once have been 'It end-did'.  Therefore it would appear that even the most widespread languages were partly created by children.  Children appear to have innate grammatical machinery in their brains, which springs to life when they are first trying to make sense of the world around them.  Their minds can serve to create logical, complex structures, even when there is no grammar present for them to copy.<br/><br />
    </p>
    <br/>
    <div class="row">
            <div class="col-md-6">
            
                <form>
                <b>1.why does the writer include information about the Cherokee language?</b>
                <div class="radio">
                  <label><input type="radio" name="optradio">A To show how simple, traditional cultures can have complicated grammar structures </label>
                </div>
                <div class="radio">
                  <label id="31"><input type="radio" name="optradio">B To show how English grammar differs from Cherokee grammar </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">C To prove that complex grammar structures were invented by the Cherokees. </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">D To demonstrate how difficult it is to learn the Cherokee language  </label>
                </div>
              </form>
             <form>
            <b>3  What can be inferred about the slaves' pidgin language?</b>
            <div class="radio">
              <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
            </div>
            <div class="radio">
              <label><input type="radio" name="optradio">B It was based on many different languages.  </label>
            </div>
            <div class="radio">
              <label id="33"><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
            </div>
            <div class="radio">
              <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
            </div>
          </form>
            </div>
            <div class="col-md-6">
                
                <form>
                <b>2.All the following sentences about Nicaraguan sign language are true EXCEPT</b>
                <div class="radio">
                  <label><input type="radio" name="optradio">A The language has been created since 1979.  </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">B The language is based on speech and lip reading.  </label>
                </div>
                <div class="radio">
                  <label><input type="radio" name="optradio">C The language incorporates signs which children used at home.  </label>
                </div>
                <div class="radio">
                  <label id="32"><input type="radio" name="optradio">D The language was perfected by younger children. </label>
                </div>
              </form>
             <form>
            <b>4  What can be inferred about the slaves' pidgin language?</b>
            <div class="radio">
              <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
            </div>
            <div class="radio">
              <label><input type="radio" name="optradio">B It was based on many different languages.  </label>
            </div>
            <div class="radio ">
              <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
            </div>
            <div class="radio">
              <label id="34"><input type="radio" name="optradio">D It was created by the land-owners. </label>
            </div>
          </form>
             
            </div>
        </div>
    
</div>
 
 
 -->
      </div>

      </div>
      </div>
      <br />
      <center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#freetestReading" id="btnTestRead">Hoàn Thành</button></center>
                  <div class="modal fade" id="freetestReading" role="dialog">
                     <div class="modal-dialog modal-sm">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Your Score : <h1>7.5</h1></strong> 
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="closeee">Close</button>
              </div>
                </div>
              </div>
            </div>

            <script type="text/javascript">
        var btn = document.getElementById("btnTestRead");
        btn.onclick=function(){
            
             document.getElementById("34").style.color = "green";
             document.getElementById("34").style.fontWeight= "bold";
             document.getElementById("11").style.color = "green";
             document.getElementById("11").style.fontWeight= "bold";
             document.getElementById("12").style.color = "green";
             document.getElementById("12").style.fontWeight= "bold";
             document.getElementById("13").style.color = "green";
             document.getElementById("13").style.fontWeight= "bold";
             document.getElementById("14").style.color = "green";
             document.getElementById("14").style.fontWeight= "bold";
             document.getElementById("21").style.color = "green";
             document.getElementById("21").style.fontWeight= "bold";
             document.getElementById("22").style.color = "green";
             document.getElementById("22").style.fontWeight= "bold";
             document.getElementById("23").style.color = "green";
             document.getElementById("23").style.fontWeight= "bold";
             document.getElementById("24").style.color = "green";
             document.getElementById("24").style.fontWeight= "bold";
             document.getElementById("31").style.color = "green";
             document.getElementById("31").style.fontWeight= "bold";
             document.getElementById("32").style.color = "green";
             document.getElementById("32").style.fontWeight= "bold";
             document.getElementById("33").style.color = "green";
             document.getElementById("33").style.fontWeight= "bold";
        };
      </script>
     
      <br />
            <p><Strong>Các bài test liên quan</Strong></p>
            <hr>
            <div class="row">
                <div class="col-sm-3">
                    <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
                    Full test IELTS 1<br>
                </div>
                <div class="col-sm-3">
                    <img src="12.jpg" class="img-circle" align="left" width="50" height="50"/>
                    Full test IELTS 2<br>
                </div>
                <div class="col-sm-3">
                    <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
                    Full test IELTS 7<br>
                </div>
                <div class="col-sm-3">
                    <img src="12.jpg" class="img-circle" align="left" width="50" height="50"/>
                    Full test IELTS 10<br>
                </div>
            </div>
<!--sdfsdfsdf-->   

    <div class="row">
   <hr>
        <div class="col-sm-6">
       
            <p><strong>TiếngAnh123.Com - a product of BeOnline Co., Ltd.</strong></p>

            <p>Giấy phép ĐKKD số: 0102852740 cấp bởi Sở Kế hoạch và Đầu tư Hà Nội.<br>
                Giấy phép đào tạo tiếng Anh số: 9816/QĐ-SGD&amp;ĐT cấp bởi Sở Giáo dục và Đào tạo Hà Nội.<br>
                Giấy phép cung cấp dịch vụ mạng xã hội học tiếng Anh trực tuyến số: 549/GP-BTTTT cấp bởi Bộ Thông tin &amp; Truyền thông. <br>
                Địa chỉ: <span class="black1"> số nhà 13,15,23, ngõ 259/9 phố Vọng, Đồng Tâm, Hai Bà Trưng, Hà Nội.<br>
                Tel: 1900 63 62 55  hoặc  047 30 82 838.</span> <a href="mailto:lophoc@tienganh123.com" class="blue1">Email: lophoc@tienganh123.com </a><br>
           

            <p>
                <p>Chuyển sang sử dụng phiên bản cho:</p>
                <a class="ta123_swicth_mobile" href="https://www.tienganh123.com/?dev=m">Mobile</a>
                <a class="ta123_swicth_tablet" href="https://www.tienganh123.com/?dev=t">Tablet</a>
               </p>
        </div>
        <div class="col-sm-6">
            
             <p>
             Địa chỉ: số 64 ngõ 49 Huỳnh Thúc Kháng, Đống Đa, Hà nội. 
            Tel: 04 6276 2098 - 04 6276 2596.
            </p>
        </div>
    </div>
   </div>

</body>
</html>