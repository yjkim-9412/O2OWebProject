package Test;

import com.itwillbs.chat.model.domain.ChatRoomDTO;
import org.junit.Test;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.registry.AlgorithmRegistry;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.SpringProperties;
import org.springframework.stereotype.Component;

import static org.junit.Assert.*;
import java.io.IOException;
import java.util.UUID;

public class JasyptSCkey {


    @Test
    public void jastypt() {
        StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
        encryptor.setAlgorithm("PBEWITHMD5ANDTRIPLEDES");
        encryptor.setPassword("DB_KEY");

        String URL = encryptor.encrypt("jdbc:mysql://o2owebproject.cljtd97l7e0o.ap-northeast-2.rds.amazonaws.com:3306/O2OWebSite");
        String decryptedURL = encryptor.decrypt(URL);
        String username = encryptor.encrypt("JDBC");
        String decryptedName = encryptor.decrypt(username);
        String passDB = encryptor.encrypt("qwer1234");
        String decryptedPass = encryptor.decrypt(passDB);

        System.out.println("Encrypted URL for admin is : "+URL);
        System.out.println("Decrypted URL for admin is : "+decryptedURL);
        System.out.println("Encrypted username for admin is : "+username);
        System.out.println("Decrypted username for admin is : "+decryptedName);
        System.out.println("Encrypted passDB for admin is : "+passDB);
        System.out.println("Decrypted passDB for admin is : "+decryptedPass);

        System.out.println();

        String roomId = UUID.randomUUID().toString();
        System.out.println(roomId);



    }


}