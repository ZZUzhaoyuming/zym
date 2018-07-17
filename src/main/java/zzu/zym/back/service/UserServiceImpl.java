package zzu.zym.back.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zzu.zym.common.dao.UserMapper;
import zzu.zym.common.entity.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    public UserMapper userMapper;

    @Override
    public User queryOne(String id,String password) {

        User user1 = userMapper.selectById(id);
        return user1;

    }
}
