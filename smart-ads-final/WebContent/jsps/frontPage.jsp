<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<style type="text/css">
	.sh div{
		height:100px;
		background:green;
		border:1px;
	
	}

</style>


<title>SmartAds</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>



<body data-gr-c-s-loaded="true">

 <!-- the navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">logo</a>
			</div>
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="#">首页</a></li>
				<li><a href="#">首页</a></li>
				<li><a href="#">首页</a></li>
			</ul>


			<form action="http://www.google.com" class="navbar-form navbar-left">
				<input type="text" class="form-control" />
				<button class="btn btn-default">Search</button>
			</form>


			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">login </a></li>
				<li><a href="#">sign up</a></li>
			</ul>


		</div>
	</nav>
	
	<!-- Main Body Part -->

	<div class="container" style="margin-top:50px;">
		<div class="starter-template" >
			<h1>SmartAds</h1>
			<p class="lead">
				Input the information about your product.<br> Find your target
				customers.
			</p>
		</div>
		
		
		<!-- 表单 -->
	<div class="container">
		<div class="row">
			<form action="/SpringMVCTest3/frontPage/receive" class="form-horizontal" method="post">
				<div class="form-group form-group-lg">
					<label  class="col-lg-2 control-label">Product Property</label> 
						<div class="col-lg-8">
							<input type="text" name="product_property" class="form-control" />
						</div>
					
				</div>

				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">Price</label> 
						<div class="col-lg-8">
							<input type="text" name="price" class="form-control"/>
						</div>
				</div>
				
				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">Function</label> 
						<div class="col-lg-8">
							<input type="text" name="function" class="form-control"/>
						</div>
				</div>
				
				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">Customer Income</label> 
						<div class="col-lg-8">
							<input type="text" name="customer_income" class="form-control"/>
						</div>
				</div>
				
				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">Customer Age</label> 
						<div class="col-lg-8">
							<input type="text" name="customer_age" class="form-control"/>
						</div>
				</div>
				
				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">Additional Information</label> 
						<div class="col-lg-8">
							<input type="text" name="additional_information" class="form-control"/>
						</div>
				</div>
				
				<div class="form-group form-group-lg">
					<label   class="col-lg-2 control-label">ZIP Code</label> 
						<div class="col-lg-8">
							<input type="text" id="passWord" class="form-control"/>
						</div>
				</div>



				<div class="form-group">
					<div class="col-lg-2 col-lg-offset-2">
						<div class="checkbox">
							<label><input type="checkbox"/>Remember Me</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					 <div class="col-lg-1 col-lg-offset-2"> 
					<!-- 按钮的背景色 -->
						<button type="submit" value="login3" class="btn btn-primary btn-md" style="">Search</button>
					</div>
				</div>
				
			</form>
			</div>
			</div>


		<div class="row">
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">

					<thead>
						<tr>
							<th>l1</th>
							<th>l2</th>
							<th>l3</th>
						</tr>
					</thead>

					<c:forEach items="${companyProducts}" var="cp" varStatus="status">
						    <td ${cp.price}>
							<td>${cp.customer_age}</td>
							<td>${cp.customer_income}</td>
					</c:forEach>


					<!-- <tbody>
						<tr class="success">
							<td class="danger">100</td>
							<td>99</td>
							<td>99</td>

						</tr>

						<tr class="danger">
							<td>100</td>
							<td>99</td>
							<td>99</td>
						</tr>

						<tr class="info">
							<td>100</td>
							<td>99</td>
							<td>99</td>
						</tr>
					</tbody> -->
				</table>
			</div>
		</div>
		
				<!-- 分页 -->
		<div class="row">
			<ul class="pagination">
				<li><a href="#"><<</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li class="active"><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">>></a></li>
			</ul>
		</div>
	</div>
	
	
	
	<footer class="footer ">
      <div class="container">
        <div class="row footer-top">
          <div class="col-sm-6 col-lg-6">
            <h4>
              <img src="../imges/sky.jpg">
            </h4>
            <p>本网站所列开源项目的中文版文档全部由<a href="#">Bootstrap中文网</a>成员翻译整理，并全部遵循 <a href="http://creativecommons.org/licenses/by/3.0/" target="_blank">CC BY 3.0</a>协议发布。</p>
          </div>
          <div class="col-sm-6  col-lg-5 col-lg-offset-1">
            <div class="row about">
              <div class="col-xs-3">
                <h4>关于</h4>
                <ul class="list-unstyled">
                  <li><a href="http://www.bootcss.com/about/">关于我们</a></li>
                  <li><a href="http://www.bootcss.com/ad/">广告合作</a></li>
                  <li><a href="http://www.bootcss.com/links/">友情链接</a></li>
                  <li><a href="http://www.bootcss.com/hr/">招聘</a></li>
                </ul>
              </div>
              <div class="col-xs-3">
                <h4>联系方式</h4>
                <ul class="list-unstyled">
                  <li><a href="http://weibo.com/bootcss" title="Bootstrap中文网官方微博" target="_blank">新浪微博</a></li>
                  <li><a href="mailto:admin@bootcss.com">电子邮件</a></li>
                </ul>
              </div>
              <div class="col-xs-3">
                <h4>旗下网站</h4>
                <ul class="list-unstyled">
                  <li><a href="http://www.golaravel.com/" target="_blank">Laravel中文网</a></li>
                  <li><a href="http://www.ghostchina.com/" target="_blank">Ghost中国</a></li>
                </ul>
              </div>
              <div class="col-xs-3">
                <h4>赞助商</h4>
                <ul class="list-unstyled">
                  <li><a href="http://www.ucloud.cn/" target="_blank">UCloud</a></li>
                  <li><a href="https://www.upyun.com/" target="_blank">又拍云</a></li>
                </ul>
              </div>
            </div>
    
          </div>
        </div>
        <hr>
        <div class="row footer-bottom">
          <ul class="list-inline text-center">
            <li><a href="#" target="_blank">PoweredBy CMPE272 Team7</a></li><li>Dec.2016</li>
          </ul>
        </div>
      </div>
    </footer>
	
	
<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
<script language="JavaScript">
$(document).ready(function() {
   var title = {
       text: '月平均气温'   
   };
   var subtitle = {
        text: 'Source: runoob.com'
   };
   var xAxis = {
       categories: ['一月', '二月', '三月', '四月', '五月', '六月'
              ,'七月', '八月', '九月', '十月', '十一月', '十二月']
   };
   var yAxis = {
      title: {
         text: 'Temperature (\xB0C)'
      },
      plotLines: [{
         value: 0,
         width: 1,
         color: '#808080'
      }]
   };   

   var tooltip = {
      valueSuffix: '\xB0C'
   }

   var legend = {
      layout: 'vertical',
      align: 'right',
      verticalAlign: 'middle',
      borderWidth: 0
   };

   var series =  [
      {
         name: 'Tokyo',
         data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2,
            26.5, 23.3, 18.3, 13.9, 9.6]
      },
      {
         name: 'New York',
         data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8,
            24.1, 20.1, 14.1, 8.6, 2.5]
      },
      {
         name: 'Berlin',
         data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6,
            17.9, 14.3, 9.0, 3.9, 1.0]
      },
      {
         name: 'London',
         data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0,
            16.6, 14.2, 10.3, 6.6, 4.8]
      }
   ];

   var json = {};

   json.title = title;
   json.subtitle = subtitle;
   json.xAxis = xAxis;
   json.yAxis = yAxis;
   json.tooltip = tooltip;
   json.legend = legend;
   json.series = series;

   $('#container').highcharts(json);
});
</script>
	
	


	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>



</html>