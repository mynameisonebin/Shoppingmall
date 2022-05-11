<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="/web/resources/bootstrap/css/styles.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<title>관리자 메인</title>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="/web/jmain">ShoppingMall</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
	</nav>
 	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Menu</div>
						 <a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
							<div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
							메인으로
							<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a> 
						<div class="collapse" id="collapsePages" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/web/admin">관리자 페이지</a>
								<a class="nav-link" href="/web/jmain">일반 페이지</a>
							</nav>
						</div> 
						<a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapseMember" aria-expanded="false" aria-controls="collapseMember">
    						<div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
    						회원 관리
    						<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="collapseMember" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/web/admin/memberManage">회원 목록</a>
								<a class="nav-link" href="/web/admin/withdrawalMemberManage">탈퇴 회원 목록</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapseItemReg" aria-expanded="false" aria-controls="collapseItemReg"> 
							<div class="sb-nav-link-icon"><i class="fas fa-file-alt"></i></div>
    						상품 등록
    						<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
						</a>
						<div class="collapse" id="collapseItemReg" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/web/admin/itemNewReg">신규 상품 추가</a>
								<a class="nav-link" href="/web/admin/itemAddList">기존 상품 옵션 추가</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="/web/admin/itemList">
    						<div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
    						상품 목록
						</a>
						<a class="nav-link collapsed" href="" data-bs-toggle="collapse" data-bs-target="#collapseOrder" aria-expanded="false" aria-controls="collapseOrder">
    						<div class="sb-nav-link-icon"><i class="fas fa-shopping-cart"></i></div>
    						주문 관리
    						<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
   						</a> 
   						<div class="collapse" id="collapseOrder" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/web/admin/orderList">현재 주문</a>
								<a class="nav-link" href="/web/admin/orderComplete">완료 주문</a>
							</nav>
						</div>          
					</div> 
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Welcome :-)</div>
						Admin pages
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
         			<h1 class="mt-4">안녕하세요. 관리자 페이지입니다.</h1>
		     		<div class="card mb-4"> 
             			<div class="card-header">
                   			<i class="fas fa-user"></i>
							회원 정보  
             			</div> 
            			<div class="container-fluid">  
							<div class="row mb-3">			  
								<div class="row">  
									<div class="col-12">  
										<table class="table bg-light ">
											<thead>
												<tr>
													<th>Member code</th>
             										<th>Name</th>
             		 								<th>Member ID</th>
             		 								<th>Nickname</th>
              		   								<th>Address</th>
												</tr>
											</thead>	
        									<tbody>
												<c:forEach var="list" items="${list}">
													<tr>
														<td>${list.num}</td>
														<td>${list.name}</td>
														<td>${list.id}</td>
														<td>${list.nickName}</td>
														<td>${list.address1} ${list.address2}</td>
													</tr>	
												</c:forEach>
                       						</tbody>
										</table>					
									</div>
								</div>
							</div>
						</div>
						<div class="card-header">
                   			<i class="fas fa-user"></i>
							상품 목록  
             			</div> 
            			<div class="container-fluid">  
							<div class="row mb-3">			  
								<div class="row">  
									<div class="col-12">  
										<table class="table bg-light ">
											<thead>
												<tr>
													<th>상품 코드</th>
			                                    	<th>상품 이름</th>
			                                    	<th>상품 가격</th>
			                                    	<th>사이즈</th>
			                                    	<th>수량</th>
			                                    	<th>분류 코드</th>
												</tr>
											</thead>	
        									<tbody>
												<c:forEach var="list" items="${itemList}">
													<tr>
														<td>${list.itemCode}</td>
														<td>${list.itemName}</td>
														<td>${list.itemPrice}</td>
														<td>${list.itemSize}</td>
														<td>${list.itemQty}</td>
														<td>${list.itemCateCode}</td>
													</tr>	
												</c:forEach>
                       						</tbody>
										</table>					
									</div>
								</div>
							</div>
						</div>
						<div class="card-header">
                   			<i class="fas fa-user"></i>
							주문 목록  
             			</div> 
            			<div class="container-fluid">  
							<div class="row mb-3">			  
								<div class="row">  
									<div class="col-12">  
										<table class="table bg-light ">
											<thead>
												<tr>
													<th>주문번호</th>
			    									<th>수령인</th>
			    		 							<th>주소</th>
			    		 							<th>가격</th>
			     		   							<th>배송상태</th>
												</tr>
											</thead>	
        									<tbody>
												<c:forEach var="list" items="${orderList}">
													<tr>
														<td>${list.orderId}</td>
														<td>${list.orderRec}</td>
														<td>${list.userAddr1} ${list.userAddr2} ${list.userAddr3}</td>
														<td>${list.amount}원</td>
														<td>${list.delivery}</td>
													</tr>	
												</c:forEach>
                       						</tbody>
										</table>					
									</div>
								</div>
							</div>
						</div>  
					</div>
         		</div>
            </main>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/web/resources/bootstrap/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="/web/resources/bootstrap/assets/demo/chart-area-demo.js"></script>
<script src="/web/resources/bootstrap/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="/web/resources/bootstrap/js/datatables-simple-demo.js"></script>
</body>
</html>