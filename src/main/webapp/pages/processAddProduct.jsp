<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\Users\\LeeSeokhyun\\eclipse-workspace\\웹설계\\ZeroNine\\src\\main\\webapp\\resources\\img";
	int maxSize = 5 * 1024 * 1024 ;
	String encType = "utf-8";

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());


	String id = multi.getParameter("id");
	String pname = multi.getParameter("pname");
	String category = multi.getParameter("category");
	String Price = multi.getParameter("price");
	String Pnum = multi.getParameter("pnum");
	String address = multi.getParameter("address");
	String description = multi.getParameter("description");
	
	Integer price;
	if( Price == null){	price = 0;	}
	else{	price = Integer.valueOf(Price);	}
	
	Integer pnum;
	if(Pnum == null){	pnum = 0;	}
	else{	pnum = Integer.valueOf(Pnum);	}
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	
	newProduct.setId(id);
	newProduct.setPname(pname);
	newProduct.setCategory(category);
	newProduct.setPrice(price);
	newProduct.setPnum(pnum);
	newProduct.setAddress(address);
	newProduct.setDescription(description);
	newProduct.setFilename(fileName);
	
	if(Price != null && Pnum != null ){	
		newProduct.setDividedPrice(); 
	}
	
	
	dao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
%>