package Business;


import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import DataAccess.CartDao;

@WebServlet(name="CartServlet", urlPatterns={"/showcart", "/addtocart"})
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private CartDao cartDAO;

    public void init() {
    	cartDAO = new CartDao();
    }
				
    public CartServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        String action = request.getServletPath();
    	        try {
    	            switch (action) {
    	                case "/showcart":
    	                	showCart(request, response);
    	                    break;
    	                case "/addtocart":
    	                	addToCart(request, response);
    	                    break;
    	                default:
    	                    break;
    	            }
    	        } catch (SQLException ex) {
    	            throw new ServletException(ex);
    	        }
    	    }
	private void addToCart(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException, ServletException {
		int user_id= (int) request.getSession().getAttribute("user_id");
		int product_id= Integer.parseInt(request.getParameter("product_id"));
		List < Cart > listItem = cartDAO.selectAllItems(user_id);
		for() {
			
		}
		int quantity = 1);
		
		int stockId = CartDao.getStock(product_id);
		
		if(stockId >=quantity) {
			CartDao.insertIntoCart(user_id,product_id,quantity);	
		}
		
		showCart(request, response);
	}
	
	private void showCart(HttpServletRequest request, HttpServletResponse response)
		    throws SQLException, IOException, ServletException {
		int user_id= (int) request.getSession().getAttribute("user_id");
		
		List < Cart > listItem = cartDAO.selectAllItems(user_id);
        request.setAttribute("listItem", listItem);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(request, response);
     }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}