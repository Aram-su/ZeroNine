package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository() {
		Product p1 = new Product("ZN0001","햇반","식료품"
				, 40000, 2,"수원시 이의동"
				,"햇반 2명이서 나눠서 사실분!!","ZN0001.png");
		
		Product p2 = new Product("ZN0002","두루마리 휴지","생필품"
				, 23000, 2,"수원시 연무동"
				,"두루마리 휴지 2팩 같이 구매해서 택배비 아낄 분 있나요?","ZN0002.png");
		
		Product p3 = new Product("ZN0003","신라면 컵라면","식료품"
				, 45000, 3,"수원시 이의동"
				,"컵라면 16개씩 3팩 시킬건데 나눠서 살 분들 모집합니다.","ZN0003.png");
		
		addProduct(p1);
		addProduct(p2);
		addProduct(p3);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}	
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i = 0 ; i < listOfProducts.size() ;i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getId() != null && product.getId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
	}
	

	public static ProductRepository getInstance() {
		return instance;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
}
