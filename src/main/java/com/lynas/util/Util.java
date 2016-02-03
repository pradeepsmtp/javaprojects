package com.lynas.util;

import com.lynas.dao.User;
import com.lynas.service.GitHubLookupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/**
 * Created by lynas on 2/3/16
 */
@Component
public class Util {

    @Autowired
    GitHubLookupService gitHubLookupService;

    @Scheduled(fixedRate = 10000)
    public void reportCurrentTime() {
        try {
            Future<User> page1 = gitHubLookupService.findUser("lynas");
            Thread.sleep(5000);
            if (page1.isDone()){
                System.out.println(page1.get());
            }
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        } catch (ExecutionException e) {
            System.out.println(e.getMessage());
        }
    }

}
