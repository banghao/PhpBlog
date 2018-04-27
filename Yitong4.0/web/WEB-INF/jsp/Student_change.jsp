<%@ page import="com.xc.model.Student" %>
<%@ page import="com.xc.dao.StudentDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Director | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <meta name="description" content="Developed By M Abdur Rokib Promy">
        <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />

        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link href="css/style.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-black">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index.html" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                 <span style="font-family: '微软雅黑'; font-size: 18px; ">易通在线管理系统</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">您有4条新信息</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/26115.jpg" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
  							                                                  白起教练
                                                </h4>
                                                <p>这个平台真好用！</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                   	 欧阳娜娜教练
                                                </h4>
                                                <p>这个平台可真棒！</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                 	李泽言教练
                                                </h4>
                                                <p>我李泽言用了都说好！</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Today</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                  	李小璐教练
                                                </h4>
                                                <p>用了都不想出轨，害羞！</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                   	 贾乃亮教练
                                                </h4>
                                                <p>自从用了这个平台都不会怀疑自己会被绿！</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 days</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">查看所有信息</a></li>
                            </ul>
                        </li>
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">任务用量统计</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="Coaching_information.jsp">
                                                <h3>
                                                    查询教练信息
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="Student_information.jsp">
                                                <h3>
                                                    查询学员信息
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="Training_arrangements.jsp">
                                                <h3>
                                                   查询培训安排
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="Examination_arrangement.jsp">
                                                <h3>
                                                    查询考试安排
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">查看所有任务用量详情</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <span>Json Key<i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center">账 户</li>

                                <li>
                                    <a href="#">
                                    <i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> 更 新</a>
                                    <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span>消 息</a>
                                    <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span>用 户</a>
                                    <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                        "badge pull-right">11</span>常见问题</a>
                                </li>

                                <li class="divider"></li>

                                    <li>
                                        <a href="#">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            管理员信息
                                        </a>
                                        <a data-toggle="modal" href="#modal-user-settings">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            设 置
                                        </a>
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="#"><i class="fa fa-ban fa-fw pull-right"></i>注 销</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
        </header>
              <div class="wrapper row-offcanvas row-offcanvas-left">
                    <!-- Left side column. contains the logo and sidebar -->
                    <aside class="left-side sidebar-offcanvas">
                        <!-- sidebar: style can be found in sidebar.less -->
                        <section class="sidebar">
                            <!-- Sidebar user panel -->
                            <div class="user-panel">
                                <div class="pull-left image">
                                    <img src="img/26115.jpg" class="img-circle" alt="User Image" />
                                </div>
                                <div class="pull-left info">
                                    <p>Hello, Json</p>

                                    <a href="#"><i class="fa fa-circle text-success"></i>在 线</a>
                                </div>
                            </div>
                            <!-- search form -->
                            <form action="#" method="get" class="sidebar-form">
                                <div class="input-group">
                                    <input type="text" name="q" class="form-control" placeholder="搜 索..."/>
                                    <span class="input-group-btn">
                                        <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>
                            <!-- /.search form -->
                            <!-- sidebar menu: : style can be found in sidebar.less -->
                            <ul class="sidebar-menu">
                                <li >
                                    <a href="xitongindex.do">
                                        <i class="fa fa-home"></i> <span>首 页</span>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="Student.do?method=0">
                                        <i class="fa fa-list"></i> <span>学员信息</span>
                                    </a>
                                </li>

                                <li >
                                    <a href="Stucoa.do?method=1">
                                        <i class="fa fa-align-justify"></i> <span>教练信息</span>
                                    </a>
                                </li>

                                <li >
                                    <a href="Stucoa.do?method=0">
                                        <i class="fa fa-calendar"></i> <span>培训安排</span>
                                    </a>
                                </li>
								
								<li>
                                    <a href="Test_arrange.do">
                                        <i class="fa fa-indent"></i> <span>考试安排</span>
                                    </a>
                                </li>
                            </ul>
                        </section>
                        <!-- /.sidebar -->
                    </aside>    
            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->


                <!-- Main content -->
                <section class="content">
                    <!--row1-->
                    <div class="row">
                        <div class="col-md-12">
                            <section class="panel">
                              <header class="panel-heading" style="background-color: #37474f;">
                                 <span style="font-family: '微软雅黑'; font-size: 25px; color: #F9F9F9;font-weight: bold;">学员详情：</span>
                              </header>
                                <%
                                    StudentDao studentDao = new StudentDao();
                                    Student student= new Student();
                                    student.setStuID(request.getAttribute("id").toString());
                                    studentDao.aboutstudent(student);
                                %>
                              <div class="panel-body">
                                  <form action="Student.do?method=4&id=<%=student.getStuID()%>" class="form-horizontal tasi-form" method="post">
                                  	<div id="form-border" style="border: 2px solid;border-radius:25px; height:430px;width: 70%;margin: auto;">
                                      <div class="form-group" style="font-size: 18px; position: relative; top: 30px;">
	                                      	<div class="col-lg-7" id="left">
	                                          <label class="col-lg-5 col-sm-5 control-label">姓   名：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生姓名
	                                          -->
	                                          <div class="col-md-7 form-group">
                                           		 <input  name="name" type="text"  class="form-control" placeholder="<%=student.getStuname()%>">
                                       		 </div>
	                                          
	                                          <label class="col-lg-5 col-sm-5 control-label">性   别：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生性别
	                                          -->
	                                          <div class="col-md-7 form-group">
                                           		 <input name="sex" type="text"  class="form-control" placeholder="<%=student.getStusex()%>">
                                       		 </div>
	                                          <label class="col-lg-5 col-sm-6 control-label">培训阶段：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生培训阶段
	                                          -->
	                                          <div class="col-md-7 form-group">
                                           		 <input name="type" type="text"  class="form-control" placeholder="<%
                                           		 if(student.getStustate().equals("1")) out.print("科目一");
                                                      else if(student.getStustate().equals("2")) out.print("科目二");
                                                      else if(student.getStustate().equals("3")) out.print("科目三");
                                                      else if(student.getStustate().equals("4")) out.print("科目四");
                                                      else out.print("毕业");
                                           		 %>">
                                       		 </div>
	                                          <label class="col-lg-5 col-sm-5 control-label">出生日期：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生出生日期
	                                          -->
	                                        	  <div class="col-md-3 form-group">
	                                               <select name="year" class="form-control m-b-4">
                                                  <option>年</option>
			                                        <option value="1940">1940</option>
													<option value="1941">1941</option>
													<option value="1942">1942</option>
													<option value="1943">1943</option>
													<option value="1944">1944</option>
													<option value="1945">1945</option>
													<option value="1946">1946</option>
													<option value="1947">1947</option>
													<option value="1948">1948</option>
													<option value="1949">1949</option>
													<option value="1950">1950</option>
													<option value="1951">1951</option>
													<option value="1952">1952</option>
													<option value="1953">1953</option>
													<option value="1954">1954</option>
													<option value="1955">1955</option>
													<option value="1956">1956</option>
													<option value="1957">1957</option>
													<option value="1958">1958</option>
													<option value="1959">1959</option>
													<option value="1960">1960</option>
													<option value="1961">1961</option>
													<option value="1962">1962</option>
													<option value="1963">1963</option>
													<option value="1964">1964</option>
													<option value="1965">1965</option>
													<option value="1966">1966</option>
													<option value="1967">1967</option>
													<option value="1968">1968</option>
													<option value="1969">1969</option>
													<option value="1970">1970</option>
													<option value="1971">1971</option>
													<option value="1972">1972</option>
													<option value="1973">1973</option>
													<option value="1974">1974</option>
													<option value="1975">1975</option>
													<option value="1976">1976</option>
													<option value="1977">1977</option>
													<option value="1978">1978</option>
													<option value="1979">1979</option>
													<option value="1980">1980</option>
													<option value="1981">1981</option>
													<option value="1982">1982</option>
													<option value="1983">1983</option>
													<option value="1984">1984</option>
													<option value="1985">1985</option>
													<option value="1986">1986</option>
													<option value="1987">1987</option>
													<option value="1988">1988</option>
													<option value="1989">1989</option>
													<option value="1990">1990</option>
													<option value="1991">1991</option>
													<option value="1992">1992</option>
													<option value="1993">1993</option>
													<option value="1994">1994</option>
													<option value="1995">1995</option>
													<option value="1996">1996</option>
													<option value="1997">1997</option>
													<option value="1998">1998</option>
													<option value="1999">1999</option>
													<option value="2000">2000</option>
													<option value="2001">2001</option>
													<option value="2002">2002</option>
													<option value="2003">2003</option>
													<option value="2004">2004</option>
													<option value="2005">2005</option>
													<option value="2006">2006</option>
													<option value="2007">2007</option>
													<option value="2008">2008</option>
													<option value="2009">2009</option>
													<option value="2010">2010</option>
													<option value="2011">2011</option>
													<option value="2012">2012</option>
													<option value="2013">2013</option>
													<option value="2014">2014</option>
													<option value="2015">2015</option>
													<option value="2016">2016</option>
													<option value="2017">2017</option>
													<option value="2018">2018</option>
                                             	 </select>
	                                         </div> 
	                                         <div class="col-md-3 form-group">
	                                              <select name="mouth" class="form-control m-b-4">
                                                  	<option>月</option>
                                                  	<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
                                             	 </select>
	                                         </div> 
	                                         <div class="col-md-3 form-group">
	                                              <select name="day" class="form-control m-b-4">
	                                              	<option value="日">日</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
                                             	 </select>
	                                         </div> 
	                                          <label class="col-lg-5 col-sm-5 control-label">联系方式：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生联系方式
	                                          -->
	                                          <div class="col-md-7 form-group">
                                           		 <input name="phone" type="text"  class="form-control" placeholder="<%=student.getStuphone()%>">
                                       		 </div>
	                                          <label class="col-lg-5 col-sm-5 control-label">家庭住址：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生住址
	                                          -->
	                                          <div class="col-lg-6">
	                                         		<textarea name="addr" style="width: 300px; border: 1px #BDBDBD solid;" placeholder="<%=student.getStuaddr()%>"></textarea>
	                                          </div>
	                                       </div > 
                                      		 
	                                       <div class="col-lg-5" id="right">
	                                       		<img src="img/26115.jpg"  style="position: relative; top: 10px;"/>
	                                       </div>
	                                       <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中修改一条数据
	                                          -->
	                                       <div class="col-lg-9">
	                                       		<input style="position: relative; left: 57%;top: 20px; width: 120px; border: none; color: white; padding: 15px 20px;border-radius: 12px; text-align:center; text-decoration: none; display:inline-block; font-weight:bold;font-size: 16px;background-color: #78909C;" type="submit" value="完 成">
	                                       </div>
                                      </div>
                                   </div>
                                  </form>
                              </div>
                            </section>                   
                        </div>
                    </div>
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
            <div class="footer-main" style="text-align: center; margin: auto;">
                Copyright &copy  Json  2017-2018
            </div>
        </div><!-- ./wrapper -->
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Director App -->
        <script src="js/Director/app.js" type="text/javascript"></script>
    </body>
</html>
