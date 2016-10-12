package entity;

import entity.Contacts;
import entity.Groupuser;
import entity.Messages;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-10-12T21:40:30")
@StaticMetamodel(Users.class)
public class Users_ { 

    public static volatile CollectionAttribute<Users, Contacts> contactsCollection;
    public static volatile SingularAttribute<Users, String> pass;
    public static volatile CollectionAttribute<Users, Groupuser> groupuserCollection;
    public static volatile SingularAttribute<Users, String> login;
    public static volatile CollectionAttribute<Users, Messages> messagesCollection;

}