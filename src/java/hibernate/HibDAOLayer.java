
package hibernate;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import table.*;

public class HibDAOLayer {

    private static final SessionFactory sessionFactory;
    
    static {
        try {
            Configuration cfg = new Configuration();
            cfg.addAnnotatedClass(VotingSystem.class);
            //cfg.addAnnotatedClass(Faculty.class);
            //cfg.addAnnotatedClass(Login.class);
            //cfg.addAnnotatedClass(Movie.class);
            
            cfg.configure();
            sessionFactory = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
//configuration is driver    
//factory is connection 
// session is driver
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public static Session getSession()/*get statement*/{
        return sessionFactory.openSession();
    }
}
