<%@taglib prefix="s" uri="/struts-tags" %>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="brand" href="${pageContext.request.contextPath}/">Arizona</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="dropdown active">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><s:text name="entries" /> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/providers"><s:text name="provider" /></a></li>
							<li><a href="${pageContext.request.contextPath}/products"><s:text name="product" /></a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>