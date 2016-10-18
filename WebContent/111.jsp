
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<title>Home</title>
<title></title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">

    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
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
</head>
<body style="background: url(images/background.jpg);">
<!--
 <div id="logo">
    
         <center><img src="images/banner.jpg" style="width: 70%;" ></center>
         <hr>
 </div>
-->
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
            <a class="navbar-brand" href="111.jsp"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <button class="btn btn-primary" style="margin-top:0.2cm" data-toggle="modal" data-target="#fdangnhap">Đăng Nhập</button> &nbsp; <a href="DangKy.jsp"><button class="btn btn-primary" style="margin-top:0.2cm">Đăng Ký</button></a>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="111.jsp">Home</a></li>
                <li><a href="Gioi%20Thieu.jsp">Giới thiệu</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Online <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-level">
                      
                         <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Reading</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 8.0</a></li>
                                           
                                    </ul>
                        </li>
                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Listening</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20listenning.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.jsp">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.jsp">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Speaking</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20speaking.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.jsp">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.jsp">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                       <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Writing</a>
                            <ul class="dropdown-menu">
                                <li><a href="click%20writing.jsp">IELTS 6.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.jsp">IELTS 6.0 - 8.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.jsp">IELTS 8.0</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>



                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Free Test <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li data-toggle="modal" data-target="#tbdn1"><a href="#">Test Reading</a></li>
                        <li class="divider"></li>
                        <li data-toggle="modal" data-target="#tbdn1"><a href="#">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.jsp">Tài liệu</a></li>
                <li data-toggle="modal" data-target="#tbdn1"><a href="#">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

  <div class="modal fade" id="tbdn1" role="dialog">
                          <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="alert alert-success">
                                    <strong>Mời bạn đăng nhập </strong>
                                </div>
                               
                              </div>
                              <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                          </div>
                            </div>
                          </div>
                        </div>

            
 <div class="modal fade" id="fdangnhap" role="dialog" ng-app="dangnhap1">
 <div ng-controlle="demo1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form name=dangn1 action ="DangNhapServlet" method= "post">

                                      <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                          <div class="modal-body">
                                
                                        <div class="form-group">
                                        <label for="user">Username:</label>
                                        <input class="form-control" type="text" id ="us" name="user" ng-minlength="4" ng-maxlength="15" ng-model="user" required/>
                                        <span class="text-danger" ng-show="dangn1.user.$error.required">User không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.minlength">Độ dài tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.maxlength">Độ dài tối đa là 15</span>
                                        </div>

                                        <div class="form-group">
                                        <label for="pass">Mật khẩu:</label>
                                        <input id ="ps" class="form-control" type="password" name="pass" ng-minlength="4" ng-maxlength="15" ng-model="pass" required/>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.required">Password không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.minlength">Độ dài password tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.maxlength">Độ dài password tối đa là 15</span>
                                        </div>
									
                                        <br />
                                        <center><button type="submit" class="btn btn-info" ng-disabled ="!dangn1.$valid" value ="Đăng nhập">Đăng nhập</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button></center>

                                        </center>
                                     
                                  
                        
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div> 
                    </div> 
                     </div>
 </div>
 </div>


 <div class="content-right-full">
          <div class="content-right">
            <div class="intro-home">
                            
                    <h1 style="text-align: left;"><span style="color: #0000ff;">
                    <strong>
                    	<marquee><p style="color: red">WEBSITE HỖ TRỢ HỌC IELTS ONLINE</p></marquee>
                    </strong>
                    </span>
                    </h1>
					<p><span style="color: #0000ff;"><strong><span style="font-size: x-large; text-align: left;">&nbsp;</span></strong></span></p>
					<p style="text-align: center;"><strong>
					<span style="color: #333333; font-size: x-large; text-align: left;">&nbsp;</span></strong><strong style="color: #0000ff; font-size: x-large;">Bạn muốn vượt qua kỳ thi&nbsp;<span style="color: #ff6600;">IELTS</span>&nbsp;trong 4 tháng?</strong></p>
					<p style="text-align: center;"><strong style="color: #0000ff; font-size: x-large;">&nbsp;</strong></p>
					<p style="text-align: center;"><strong style="color: #0000ff; font-size: x-large;"><img src="images/IELTS.jpg" border="0" width="855" height="235"></strong></p>
					<p>&nbsp;<strong style="font-size: small;"><strong><strong>&nbsp;</strong></strong></strong></p>
			<address>
					<p style="text-align: justify;">
						<span style="font-size: small;">
						<strong>Vượt qua&nbsp;kỳ thi IELTS</strong> là một vấn đề cực kì khó khăn trong&nbsp;<strong>luyện thi ielts<a href="http://www.luyenthiielts.net/" title="luyện thi ielts"></a></strong>. Nhiều học sinh đã mất rất nhiều thời gian và công sức học tập nhưng vẫn không thể đạt được kết quả mong muốn.&nbsp;<em>Lí do của sự thất bại này, về cơ bản, là do các bạn chưa xây dựng được một chiến lược học tập hợp lý, không được giảng dạy đúng trọng tâm kiến thức cần thiết cho kỳ thi.</em></span>
					</p>
					<p style="text-align: justify;"><span style="font-size: small;">&nbsp;&nbsp;</span></p>
					<p style="text-align: justify;">
						<span style="font-size: small;">Với hơn 20<em>&nbsp;năm kinh nghiệm</em>&nbsp;trong việc&nbsp;<strong>giảng dạy IELTS</strong><strong>&nbsp;</strong>(tại các&nbsp;<strong><em>trung tâm Anh Ngữ hàng đầu</em></strong>), giảng viên ĐH**, Thạc sỹ Nguyễn Văn ABC chắc chắn sẽ giúp các bạn vượt qua kỳ thì IELTS để các bạn có thể đạt được ước mơ học tập và làm việc tại nước ngoài.</span>
					</p>
					<p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
					<p style="text-align: justify;">
						<span style="font-size: small;"></span><span style="font-size: small;"></span><strong style="font-size: small;">Với giáo trình được biên soạn kỹ lưỡng (luôn cập nhật các đề luyện thi mới nhất hằng tuần), khóa học sẽ giúp các bạn chuẩn bị tốt nhất cho kỳ thi. Hơn 95% học viên sau khi hoàn thành khóa học đạt điểm 6.0 trở lên.</strong>
						</p>
					<p style="text-align: justify;"><strong style="font-size: small;">&nbsp;</strong></p>
				<p style="text-align: center;"><span style="font-size: large;"><strong>&nbsp;</strong><strong style="font-size: small; text-align: center;"><span style="text-decoration: underline;"><a href="http://www.luyenthiielts.net/gioi-thieu/diem-thi-ielts-tham-khao" title="Điểm thi ielts tham khảo."><span style="color: #0000ff;">Xem thêm điểm thi các học viên trung tâm</span></a></span></strong></span></p>
			</address>
			<address>
				<p style="text-align: justify;"><span style="font-size: small;"><strong>&nbsp;</strong></span></p>
				<p style="text-align: justify;">
					<span style="font-size: small;">
						<img style="margin: 10px; float: right; border: 1px solid gray;" src="images/way_to_ielts.jpg" border="0" width="300" height="300">-<strong> Kỹ năng Nghe IELTS</strong>&nbsp;được giảng dạy bằng&nbsp;<em>giáo trình luyện thi ielts nội bộ đặc biệt, được chia làm 02 phần. Phần ôn tập để tập nghe ở nhà, phần kỹ năng sẽ nghe và được hướng dẫn tại lớp. Mỗi học viên được hỗ trợ một máy vi tính để thực hành nghe.&nbsp;</em>&nbsp;</span>
				</p>
				<p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
				<p style="text-align: justify;">
					<span style="font-size: small;">-&nbsp;<strong>Kỹ năng Nói IELTS&nbsp;:&nbsp;</strong>Được học kỹ năng trả lời vấn đáp bằng giáo trình biện soạn nội bộ. Học viên có cơ hội&nbsp;<em>luyện tập và thực hành</em>&nbsp;hằng ngày các chủ đề thường gặp trong kỳ thi. Đặc biệt, các bạn sẽ đuợc phỏng vấn bởi các giáo viên lớn tuổi giàu kinh nghiệm mỗi buổi học (15 phút cho mỗi học viên).</span>
				</p>
				<p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
				<p style="text-align: justify;">
					<span style="font-size: small;">-&nbsp;<strong>Kỹ năng viết IELTS</strong>&nbsp;: Chúng tôi sẽ là 	người hướng dẫn tận tình cho học viên ở kỹ năng này. Các bạn sẽ biết cách phân tích các dạng bài viết, cách phát hoạt dàn ý và cách dùng các mẫu câu ăn điểm cho phần này. Bài viết sẽ luôn được chấm và sửa cẩn thận.</span>
				</p>
				<p style="text-align: justify;">
					<span style="font-size: small;"><strong><br></strong>-&nbsp;<strong>Kỹ năng Đọc IELTS</strong>: Học viên sẽ được cung cấp tài liệu đọc hiểu nâng cao từ vựng, song song là học chiến thuật giải đề thi. Tất cả các bài đọc được chấm sửa và giải đáp thắc mắc. Tài liệu đọc phong phú và đa dạng.</span><span style="font-size: small;">Chúng tôi sẽ là người giúp bạn chọn lựa giáo trình, dạng bài đọc sát với đề thi và phù hợp với trình độ của từng học viên.</span>
				</p>
			</address>

<script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('dangnhap1',[]);
        app.controller('demo1',function($scope){

        });
  </script>

  <script type="text/javascript">
      function DangNhapz(){
           var us = document.getElementById("us").value;
           var ps = document.getElementById("ps").value;
           if(us == "admin" && ps =="admin")
                window.location.replace('Trang Quan Ly Admin.jsp');
            

            else
            {
            	if (us=="nva1"&& ps=="nva1" )
                    window.location.replace('222.jsp');
            	else
    
                alert("Mật khẩu không chính xác !");
            }
      };
  </script>
<!--sdfsdf-->
        <br />
           
<hr>
<footer class="site-footer" style="background-color: #f8f8f8">
    <div class="row">
   
        <div class="col-sm-6">
        
             <p><strong>ieltsonline.Com - a product of Cong-Thi-Tu, Ltd.</strong></p>

            <p>Giấy phép ĐKKD số: 0102852740 cấp bởi Sở Kế hoạch và Đầu tư Hà Nội.<br>
                Giấy phép đào tạo tiếng Anh số: 9816/QĐ-SGD&amp;ĐT cấp bởi Sở Giáo dục và Đào tạo Hà Nội.<br>
                Giấy phép cung cấp dịch vụ mạng xã hội học tiếng Anh trực tuyến số: 549/GP-BTTTT cấp bởi Bộ Thông tin &amp; Truyền thông. <br>
                Địa chỉ: <span class="black1"> số nhà 13,15,23, ngõ 259/9 phố Vọng, Đồng Tâm, Hai Bà Trưng, Hà Nội.<br>
                Tel: 1900 63 62 55  hoặc  047 30 82 838.</span> <a href="mailto:lophoc@ieltsonline.com" class="blue1">Email: lophoc@ieltsonline.com </a><br>
           

            
        </div>
        <div class="col-sm-6">
             
             <p>
             Địa chỉ: số 64 ngõ 49 Huỳnh Thúc Kháng, Đống Đa, Hà nội. 
            Tel: 04 6276 2098 - 04 6276 2596.
            </p>
        </div>
    </div>
   </div>
</footer>
</body>
</html>