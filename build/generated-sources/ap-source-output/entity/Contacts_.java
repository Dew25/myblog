package entity;

import entity.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-10-13T00:03:36")
@StaticMetamodel(Contacts.class)
public class Contacts_ { 

    public static volatile SingularAttribute<Contacts, String> name;
    public static volatile SingularAttribute<Contacts, Integer> id;
    public static volatile SingularAttribute<Contacts, Users> login;
    public static volatile SingularAttribute<Contacts, String> value;

}