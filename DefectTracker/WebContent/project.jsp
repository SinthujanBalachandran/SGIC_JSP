<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="fragments/header.jsp" />
<jsp:include page="fragments/sideBar.jsp"/>
<div class="container-fluid">
	<div class="row">


		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h1 class="h2">Create Projects</h1>

		</div>
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="card">
					<div class="card-header">Project Detail</div>
					<div class="card-body">
						<!-- form content	 -->
						<form action="">
							<div class="form-group">
							<label for="id_project_name">Project Name</label>
							<input type="text" class="form-control" id="id_projectName" placeholder="project Name">
							</div>
							
							<div class="form-group">
							<label for="id_project_description">Project Description</label>
							<textarea  class="form-control" id="id_projectDescription" rows="3"></textarea>
							</div>
							
							
						</form>
					
					</div>
				</div>


			</div>
			
	

		<div class="col-lg-6 col-md-6">
			<div class="card">
				<div class="card-header">Defect configuration</div>
				<div class="card-body">
				<div class="row">
					<div class="col">
						<h5>Defect Severity</h5>
						<ul>
						<li>High</li>
						<li>Medium</li>
						<li>Low</li>
						<li><input type="text"/><button>+</button></li>
						</ul>
					</div>
					<div class="col">
						<h5>Defect Priority</h5>
						<ul>
						<li>High</li>
						<li>Medium</li>
						<li>Low</li>
						<li><input type="text"/><button>+</button></li>
						</ul>
					</div>
				</div>
				</div>
			</div>

		</div>
		</div>
		<div class="col-lg-12 col-md-12">
		<input type="submit" value="Create Project " class="btn btn-primary mt-3 float-right">
		</div>
</main>
		<jsp:include page="fragments/footer.jsp" />