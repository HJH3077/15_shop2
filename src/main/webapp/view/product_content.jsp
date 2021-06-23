<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 800px;
	border-collapse: collapse;
	font-size: 13pt;
	border-color: navy;
}

table, th, td {
	padding: 10px;
	border: 1px solid black;
}

.bg {
	background-color: #dedede;
	width: 40%;
}
</style>
<script type="text/javascript">
	/* 톰켓 더블클릭으로 루트를 / 로 바꿔놓으면 ${pageContext.request.contextPath}/MyController 안써도됨 */
	function add_cart() {
		if(${login=='ok'}){
			location.href="/MyController?cmd=addCart&idx=${vo.idx}";
		}else{
			alert("로그인 하세요");
			location.href="/MyController?cmd=login";
		} 
	}
	function show_cart() {
		if(${login=='ok'}){
			location.href="/MyController?cmd=showCart";
		}else{
			alert("로그인 하세요");
			location.href="/MyController?cmd=login";
		} 
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp"%>
	<table>
		<tr>
			<td class="bg">제품Category</td>
			<td>${vo.category}</td>
			</th>
		</tr>
		<tr>
			<td class="bg">제품번호</td>
			<td>${vo.p_name}</td>
			</th>
		</tr>
		<tr>
			<td class="bg">제품이름</td>
			<td>${vo.p_name}</td>
			</th>
		</tr>
		<tr>
			<td class="bg">제품판매사</td>
			<td>${vo.p_company}</td>
			</th>
		</tr>
		<tr>
			<td class="bg">제품가격</td>
			<td>시중가 : <fmt:formatNumber value="${vo.p_price}"
					pattern="#,###" />원 <font style="color: tomato">(할인가:<fmt:formatNumber
						value="${vo.p_saleprice}" pattern="#,###" />원 )
			</font></td>
		</tr>
		<tr>
			<td class="bg">제품설명</td>
			<td>${vo.p_content}</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img src="images/${vo.p_image_l}"
				style="width: 350px;"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" value="장바구니에 담기" onclick="add_cart()" /> 
				<input type="button" value="장바구니 보기" onclick="show_cart()" />
			</td>
		</tr>
	</table>
</body>
</html>