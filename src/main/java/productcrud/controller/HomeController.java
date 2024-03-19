package productcrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import productcrud.Dao.ProductDao;
import productcrud.model.Product;

@Controller
public class HomeController {

	@Autowired
	private ProductDao productDao;

	@GetMapping("/home")
	public String homePage(Model model) {

		model.addAttribute("title", "All Product List");
		List<Product> allProducts = this.productDao.allProducts();
		model.addAttribute("allProducts", allProducts);
		return "home";
	}

	@GetMapping("/form")
	public String showForm(Model model) {

		model.addAttribute("title", "CreateProduct Form");
		return "form";
	}

	@PostMapping("/process")
	public RedirectView process(@ModelAttribute Product product, HttpServletRequest req) {
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath() + "/");
		this.productDao.createProduct(product);
		return redirectView;
	}

	@GetMapping("/delete/{productId}")
	public RedirectView process(@PathVariable("productId") int productId, HttpServletRequest req) {
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath() + "/");
		this.productDao.deleteProduct(productId);
		return redirectView;
	}
	
	@GetMapping("/edit/{productId}")
	public String showEdit(@PathVariable("productId") int productId, Model model) {
		Product signleProduct = this.productDao.signleProduct(productId);
		model.addAttribute("product",signleProduct);
		return "edit_form";
	}
		
	@PostMapping("/processEdit")
	public RedirectView processEdit(@ModelAttribute Product product, HttpServletRequest req) {
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath() + "/");
		this.productDao.editProduct(product);
		return redirectView;
	}

}
