<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%><%--
<html>
<head>
	<title>菜单导航</title>
	<meta name="decorator" content="blank"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".accordion-heading a").click(function(){
				$('.accordion-toggle i').removeClass('icon-chevron-down');
				$('.accordion-toggle i').addClass('icon-chevron-right');
				if(!$($(this).attr('href')).hasClass('in')){
					$(this).children('i').removeClass('icon-chevron-right');
					$(this).children('i').addClass('icon-chevron-down');
				}
			});
			$(".accordion-body a").click(function(){
				$("#menu-${param.parentId} li").removeClass("active");
				$("#menu-${param.parentId} li i").removeClass("icon-white");
				$(this).parent().addClass("active");
				$(this).children("i").addClass("icon-white");
				//loading('正在执行，请稍等...');
			});
			//$(".accordion-body a:first i").click();
			//$(".accordion-body li:first li:first a:first i").click();
		});
	</script>
</head>
<body> --%>
	<div class="accordion" id="menu-${param.parentId}"><c:set var="menuList" value="${fns:getMenuList()}"/><c:set var="firstMenu" value="true"/><c:forEach items="${menuList}" var="menu" varStatus="idxStatus"><c:if test="${menu.parent.id eq (not empty param.parentId ? param.parentId:1)&&menu.isShow eq '1'}">
		<div class="accordion-group" style="border:none;">
		    <div class="accordion-heading" style="background: #222d32;border: none;height: 50px; line-height: 35px;">
		    	<a style="width: 85%;border: none;padding-left: 15px;" class="accordion-toggle myMenu" data-toggle="collapse" data-parent="#menu-${param.parentId}" data-href="#collapse-${menu.id}" href="#collapse-${menu.id}" title="${menu.remarks}">
                    <i class="icon-${not empty menu.icon ? menu.icon : ''}" style="color: #fff;margin-right: 5px;"></i>&nbsp;<span style="font-size: 15px">${menu.name}</span>
                    <span class="icon-chevron-${not empty firstMenu && firstMenu ? 'down' : 'right'}" style="float: right;color: #b8c7ce;height: 35px;line-height: 30px;margin-right: 5px;"></span>
                </a>
		    </div>
		    <div id="collapse-${menu.id}" class="accordion-body collapse ${not empty firstMenu && firstMenu ? 'in' : ''}" style="background: #fff;border: none">
				<div class="accordion-inner" style="background: #2c3b41;border: none;margin-top: -8px;">
					<ul class="nav nav-list"><c:forEach items="${menuList}" var="menu2"><c:if test="${menu2.parent.id eq menu.id&&menu2.isShow eq '1'}">
						<li style="height: 40px;line-height: 40px;"><a class="myMenu myBorder" style="padding-left: 35px;"  data-href=".menu3-${menu2.id}" href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${not empty menu2.href ? menu2.href : '/404'}" target="${not empty menu2.target ? menu2.target : 'mainFrame'}" ><i class="icon-${not empty menu2.icon ? menu2.icon : 'circle-arrow-right'}"></i>&nbsp;${menu2.name}</a>
							<ul class="nav nav-list hide" style="margin:0;padding-right:0;"><c:forEach items="${menuList}" var="menu3"><c:if test="${menu3.parent.id eq menu2.id&&menu3.isShow eq '1'}">
								<li class="menu3-${menu2.id} hide"><a href="${fn:indexOf(menu3.href, '://') eq -1 ? ctx : ''}${not empty menu3.href ? menu3.href : '/404'}" target="${not empty menu3.target ? menu3.target : 'mainFrame'}" ><i class="icon-${not empty menu3.icon ? menu3.icon : 'circle-arrow-right'}"></i>&nbsp;${menu3.name}</a></li></c:if>
							</c:forEach></ul></li><c:set var="firstMenu" value="false"/></c:if></c:forEach></ul>
				</div>
		    </div>
		</div>
	</c:if></c:forEach></div><%--
</body>
</html> --%>

<style>
    .nav-list>.active>a, .nav-list>.active>a:hover, .nav-list>.active>a:focus{
        text-shadow: none;
        background-color: #1e282c;
        color: #fff !important;
        /*margin-top: 10px;*/
		border-left: 10px solid #18bc9c;
    }

	.nav-list a:hover{
		text-shadow: none;
		background-color: #1e282c !important;
		color: #fff !important;
		/*margin-top: 10px;*/
		border-left: 10px solid #18bc9c !important;
	}

	.nav-list .active .myBorder{
		border-left: 10px solid #18bc9c !important;
	}

    .myMenu{
        font-size: 14px !important;
        color: #b8c7ce !important;
        /*color: rgba(0, 0, 0, 0.65) !important;*/
    }

	.myBorder{
		border-left: 10px solid #2c3b41 !important;
	}

    .nav-list {
        padding-right: 0px;
        padding-left: 0px;
        margin-bottom: 0;
    }
    .btn-primary{
        background: #1890ff !important;
    }

</style>

<%@ include file="/WEB-INF/views/include/alert.jsp"%>