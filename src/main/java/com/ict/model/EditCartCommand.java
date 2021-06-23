package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;

public class EditCartCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CVO cvo = new CVO();
		cvo.setId(request.getParameter("id"));
		cvo.setP_num(request.getParameter("p_num"));
		cvo.setAmount(request.getParameter("amount"));
		
		int reusult = DAO.getCartAmountUpdate(cvo);
		
		// Cart.setQuant(idx, su);
		return "MyController?cmd=showCart";
	}
}