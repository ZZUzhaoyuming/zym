package zzu.zym.back.service;

import zzu.zym.common.entity.User;

public interface UserService {

        public User queryOne(String id,String password);
}
