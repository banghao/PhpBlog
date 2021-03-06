<%@ page import="com.xc.model.Coachinform" %>
<%@ page import="com.xc.dao.CoachDao" %>
<%@ page import="com.xc.model.Coach" %>
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
                                <li >
                                    <a href="Student.do?method=0">
                                        <i class="fa fa-list"></i> <span>学员信息</span>
                                    </a>
                                </li>

                                <li class="active">
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
                <%
                    String id = request.getAttribute("id").toString();
                    CoachDao coachDao=new CoachDao();
                    Coachinform coachinform = new Coachinform();
                    coachinform.setId(Integer.valueOf(id));
                    coachDao.about(coachinform);
                %>

                <!-- Main content -->
                <section class="content">
                    <!--row1-->
                    <div class="row">
                        <div class="col-md-12">
                            <section class="panel">
                              <header class="panel-heading" style="background-color: #37474f;">
                                 <span style="font-family: '微软雅黑'; font-size: 25px; color: #F9F9F9;font-weight: bold;">教练详情：</span>
                              </header>


                              <div class="panel-body">
                                  <div class="form-horizontal tasi-form">
                                  	<div id="form-border" style="border: 2px solid;border-radius:25px; height:440px;width: 70%;margin: auto;">
                                      <div class="form-group" style="font-size: 18px; position: relative; top: 30px;">
	                                      	<div class="col-lg-7" id="left">
	                                          <label class="col-lg-6 col-sm-6 control-label">姓   名：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据教练id获取学生姓名
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getCoachname()%></p>
	                                          </div>
	                                       
	                                          
	                                          <label class="col-lg-6 col-sm-6 control-label">性   别：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据教练id获取学生性别
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getSex()%></p>
	                                          </div> 
	                                          <label class="col-lg-6 col-sm-6 control-label">教练号：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据教练id获取学生姓名
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getCoaid()%></p>
	                                          </div>
	                                          <label class="col-lg-6 col-sm-6 control-label">登录密码：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取教练培训科目
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getPassword()%></p>
	                                          </div>
	                                          <label class="col-lg-6 col-sm-6 control-label">身份证号：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生出生日期
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getIdcard()%></p>
	                                          </div>
	                                          <label class="col-lg-6 col-sm-6 control-label">联系方式：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生联系方式
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getPhone()%></p>
	                                          </div>
	                                          <label class="col-lg-6 col-sm-6 control-label">家庭住址：</label>
	                                          <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中根据id获取学生住址
	                                          -->
	                                          <div class="col-lg-6">
	                                              <p class="form-control-static"><%=coachinform.getAddress()%></p>
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
	                                       <div class="col-lg-6">
	                                       		<button style="position: relative; left: 57%;top: 20px; width: 120px; border: none; color: white; padding: 15px 20px;border-radius: 12px; text-align:center; text-decoration: none; display:inline-block; font-weight:bold;font-size: 16px;background-color: #78909C;"><a href="Stucoa.do?method=3&id=<%=coachinform.getId()%>" style="color: white;">修 改</a></button>
	                                       </div>
	                                       <!--
	                                          	作者：来哲函
	                                          	时间：2018-01-06
	                                          	描述：从数据库中删除一条数据
	                                          -->
	                                       <div class="col-lg-6">
	                                       		<button style="position: relative; left: 10%;top: 20px; width: 120px; border: none; color: white; padding: 15px 20px;border-radius: 12px; text-align:center; text-decoration: none; display:inline-block; font-weight:bold;font-size: 16px;background-color: #78909C;"><a href="Stucoa.do?method=4&id=<%=coachinform.getId()%>" style="color: white;">删 除</a></button>
	                                       </div>
                                      </div>
                                   </div>
                                  </div>
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
