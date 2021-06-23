<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록 페이지</title>
<style type="text/css">
	*{
		font-size: 12pt;
	}
	table{
		width: 600px;
		margin: auto;
		border-collapse: collapse;
	}
	
	table,th,td{
		border: 1px solid black;
		padding: 10px;
	}
	
	input{
		padding: 8px;
	}
	.bg{
		background-color: #dedede;
	}
</style>
<script type="text/javascript">
	function product_add(f) {
		f.action="/MyController?cmd=product_add";
		f.submit();
	}
</script>
</head>
<body>
	<%-- 현재 페이지에서 다른 페이지 가져오기  --%>
	<%@ include file="top.jsp"%>
	<div>
		<h2>상품 등록</h2>
		<form method="post" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr>
						<th class="bg">분류</th>
						<td>
							<input type="radio" name="category" value="com001">컴퓨터
							<input type="radio" name="category" valye="ele002">가전제품
							<input type="radio" name="category" value="sp003">스포츠
						</td>
					</tr>
					<tr>
						<th class="bg">제품번호</th>
						<td><input type="text" name="p_num"></td>
					</tr>
					<tr>
						<th class="bg">제품명</th>
						<td><input type="text" name="p_name"></td>
					</tr>
					<tr>
						<th class="bg">판매사</th>
						<td><input type="text" name="p_company"></td>
					</tr>
					<tr>
						<th class="bg">상품가격</th>
						<td><input type="number" name="p_price"></td>
					</tr>
					<tr>
						<th class="bg">할인가</th>
						<td><input type="number" name="p_saleprice"></td>
					</tr>
					<tr>
						<th class="bg">상품이미지_S</th>
						<td><input type="file" name="p_image_s"></td>
					</tr>
					<tr>
						<th class="bg">상품이미지_L</th>
						<td><input type="file" name="p_image_l"></td>
					</tr>
					<tr>
						<td class="bg" colspan="2">상품상세정보</td>
					</tr>
					<tr>
						<td colspan="2"><textarea rows="10" cols="50" name="p_content"></textarea></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><input type="button" value="상품등록" onclick="product_add(this.form)"></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>