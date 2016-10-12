package entity;

import entity.Articles;
import entity.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-10-12T17:46:55")
@StaticMetamodel(Groupuser.class)
public class Groupuser_ { 

    public static volatile CollectionAttribute<Groupuser, Articles> articlesCollection;
    public static volatile SingularAttribute<Groupuser, String> name;
    public static volatile SingularAttribute<Groupuser, Users> usersLogin;

}