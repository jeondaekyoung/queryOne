package queryOne;
import javax.annotation.Resource;

import org.junit.*;

import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.impl.ProductServiceImpl;

public class TestQuery {
	@Resource(name="productService")
	
	ProductServiceImpl pro;
	 @Before
	    public void setUp() throws Exception {
	        System.out.println("@Before");
	    }

	    @After
	    public void tearDown() throws Exception {
	        System.out.println("@After");
	    }
	    @Test
	    public void testCase1() throws Exception {
	    	try {
	    		Product product=pro.selectOne_newest();
	    		if(product==null){
		    		System.out.println("나와야함");
		    	}
			} catch (NullPointerException e) {
				System.out.println("일로들어옴?");
			}
	    	
	    	
	    }

	    @Test
	    public void testCase2() throws Exception {
	        System.out.println("testCase2");
	    }
}
