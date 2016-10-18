 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a class="navbar-brand" href="222.jsp"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
           <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nguyễn Văn A <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Xem thong tin ca nhan.jsp">Thông tin cá nhân</a></li>
                        <li class="divider"></li>
                        <li ><a href="111.jsp">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="222.jsp">Home</a></li>
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
                        <li><a href="click Test Reading.jsp">Test Reading</a></li>
                        <li class="divider"></li>
                        <li ><a href="click Test Listening.jsp">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.jsp">Tài liệu</a></li>
                <li><a href="Tin Nhan Ho Tro.jsp">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

<!--sdfsdf-->
 
 <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#panelBodyOne" data-toggle="collapse"
                                   data-parent="#accordion">
                                    <span class="glyphicon glyphicon-menu-up"></span>
                                    Chúng tôi là ai ??
                                </a>
                            </h4>
                        </div>

                        <div id="panelBodyOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                               <p class="text justify">
                                   Chúng tôi được thành lập bởi những thành viên đầy đam mê và nhiệt huyết với Anh Văn từ tháng 10/2012. Đến nay, sau 4 năm hoạt động, chúng tôi đã trở thành một trong những website hỗ trợ học IELTS hàng đầu với 4 kỹ năng - tiếng Anh giao tiếp chuyên nghiệp - tốt nhất hiện nay.
                               </p>
                            </div>
                        </div>
  </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#panelBodyTwo" data-toggle="collapse"
                                   data-parent="#accordion">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                    Tổng quát về IELTS ? Vì sao phải học IELTS?
                                </a>
                            </h4>
                        </div>
                        <div id="panelBodyTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                            <center><img src="12.jpg"></center>
                                <p class="text justify"><strong>IELTS </strong>(International English Language Testing System) là Hệ thống kiểm tra tiếng Anh quốc tế được tổ chức tại hơn 800 trung tâm trên toàn thế giới.</p><br/>
                                <br />
                                <h3><strong>Tại sao phải học IELTS ?</strong></h3>
                                <p class="text justify">
                                    IELTS là một bài kiểm tra trải dài qua cả bốn kĩ năng Nghe, Nói, Đọc, Viết. Trong phần thi Nói, bạn sẽ phải đối diện trực tiếp với những người chấm thi được chứng nhận.
                                </p>
                            </div>
                        </div>
                    </div>

                     <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#panelBodyThree" data-toggle="collapse"
                                   data-parent="#accordion">
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                    Cấu trúc đề thi IELTS
                                </a>
                            </h4>
                        </div>
                        <div id="panelBodyThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>IELTS thi 4 kỹ năng : Nghe, Đọc, Nói, Viết..</p><br />
                                <p>Listening (30 phút): Trong phần này bạn sẽ phải lắng nghe một đoạn hội thoại hoặc các đoạn radio trên đài và trả lời câu hỏi liên quan</p><br />
                                <p class="text justify">Reading (60 phút): Bạn có ba đoạn văn/bài báo, đa số được rút từ các tạp chí khoa học để đọc và nhiệm vụ của bạn là tìm được các thông tin phù hợp với câu hỏi dưới mỗi bài viết.</p><br/>
                                <p class="text justify">Writing (60 phút): Bạn phải viết hai đoạn văn. Nếu phần một yêu cầu bạn phân tích, tóm lược nội dung của biểu đồ, phần hai bạn sẽ phải nêu suy nghĩ cá nhân về một quan điểm hay vấn đề trong Xã hội.</p><br/>
                                <p class="text justify">Speaking (10-15 phút): Trong phần thi nói, người giám khảo sẽ hỏi bạn các câu hỏi trong ba mục chính: Giới thiệu bản thân, Trình bày quan điểm cá nhân về một vấn đề cụ thể và phần thứ ba là hội thoại để khai thác vấn đề đã đề cập ở phần hai.</p><br/>
                            </div>
                        </div>
                    </div>
<!--sdfsdfsdf--> 
<br/>
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