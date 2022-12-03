package dto;
import java.io.Serializable;

public class Product implements Serializable {
	
	private String id;
	private String pname;
	private String category;
	private Integer price;
	private Integer pnum;
	private Double dividedPrice;
	private String address;
	private String description;
	private String filename;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String id, String pname, String category, Integer price,
			Integer pnum, String address, String description, String filename) {
		super();
		this.id = id;
		this.pname = pname;
		this.category = category;
		this.price = price;
		this.pnum = pnum;
		setDividedPrice();
		this.dividedPrice = getDividedPrice();
		this.address = address;
		this.description = description;
		this.filename = filename;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getPnum() {
		return pnum;
	}

	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}

	public Double getDividedPrice() {
		return dividedPrice;
	}
	
	public Integer getDividedPrice2() {
		return dividedPrice.intValue();
	}

	public void setDividedPrice() {
		this.dividedPrice = (double)(this.price / this.pnum);
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
