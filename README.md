package com.lelouch;

import java.math.BigDecimal;

public class CalculatorBean {
	private String first = "0";
	private String mark = "+";
	private String second = "0";
	private String result;

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getSecond() {
		return second;
	}

	public void setSecond(String second) {
		this.second = second;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void calculator() {
		BigDecimal first = new BigDecimal(this.first);
		BigDecimal second = new BigDecimal(this.second);
		switch (this.mark) {
		case "+":
			this.result = first.add(second).toString();
			break;
		case "-":
			this.result = first.subtract(second).toString();
			break;
		case "*":
			this.result = first.multiply(second).toString();
			break;
		case "/":
			if (second.doubleValue() == 0) {
				throw new RuntimeException("error");
			}
			this.result = first.divide(second, 100, BigDecimal.ROUND_HALF_UP).toString();
			break;

		default:
			throw new RuntimeException("error");
		}

	}

}
