package productcrud.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import productcrud.model.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product) {	
	   this.hibernateTemplate.save(product);
	}
	
	
	public List<Product> allProducts() {
		List<Product> allProducts = this.hibernateTemplate.loadAll(Product.class);
		return allProducts;
	}
	
	@Transactional
	public void deleteProduct(int productId) {
		Product product = this.hibernateTemplate.load(Product.class, productId);
		this.hibernateTemplate.delete(product);
	}
	
	public Product signleProduct(int productId) {
		Product product = this.hibernateTemplate.get(Product.class, productId);
		return product;
	}
	
	@Transactional
	public void editProduct(Product product) {
		this.hibernateTemplate.update(product);
	}
	
	

}
