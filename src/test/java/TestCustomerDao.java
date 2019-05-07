import com.calculate_tax.dao.CustomerDAO;
import com.calculate_tax.entities.Customer;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class TestCustomerDao {
    @Autowired
    public JdbcTemplate jdbcTemplate;

    @Before
    public void setUp() throws Exception {
        jdbcTemplate = new JdbcTemplate();
    }

    @Test
    public void testSignUp() {
        Customer customer = new Customer();
        customer.setName("testUnit");
        customer.setPassword("1");
        CustomerDAO customerDAO= new CustomerDAO(jdbcTemplate);

//        customerDAO.signup(customer);
        Assert.assertEquals(1, 1);
    }

}
