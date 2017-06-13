<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>简单计算器</title>
</head>
<body background="/Web6/010.jpg">
	<jsp:useBean id="calculatorBean" class="com.lelouch.CalculatorBean" />
	<jsp:setProperty property="*" name="calculatorBean" />
	<%
		try {
			calculatorBean.calculator();
		} catch (Exception e) {
			out.print("error");
		}
	%>
	<hr />
	<hr />
	欢迎使用!
	<hr />
	<hr />
	<form action="/Web6/calculator.jsp" method="post">
		<table width="50%" border="1" align="center">

			<tr>
				<td colspan="2">简单的计算器</td>

			</tr>



			<tr>
				<td>请输入第一个数</td>
				<td><input type="text" name="first"></td>
			</tr>



			<tr>
				<td>运算符</td>
				<td><select name="mark">
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">*</option>
						<option value="/">/</option>
				</select></td>
			</tr>



			<tr>
				<td>请输入第二个数</td>
				<td><input type="text" name="second"></td>
			</tr>



			<tr>
				<td><input type="submit" value="计算"></td>

			</tr>

		</table>

	</form>
	<hr />
	<hr />
	计算结果是:<jsp:getProperty property="result" name="calculatorBean" />
	<hr />
	<hr />

</body>

</html>
