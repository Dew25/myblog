package entity;

import entity.Groupuser;
import entity.Messages;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-10-13T01:23:38")
@StaticMetamodel(Articles.class)
public class Articles_ { 

    public static volatile SingularAttribute<Articles, Date> date;
    public static volatile CollectionAttribute<Articles, Groupuser> groupuserCollection;
    public static volatile SingularAttribute<Articles, Integer> id;
    public static volatile SingularAttribute<Articles, String> text;
    public static volatile SingularAttribute<Articles, String> title;
    public static volatile CollectionAttribute<Articles, Messages> messagesCollection;

}