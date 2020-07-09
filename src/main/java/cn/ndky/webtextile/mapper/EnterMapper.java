package cn.ndky.webtextile.mapper;

import cn.ndky.webtextile.pojo.Enter;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EnterMapper {

    public List<Enter> getEnterList();

    public Enter getEnterByEnterId(int enterId);

    public void updateEnterByEnterId(Enter enter);

    public void delEnterByEnterId(int enterId);

    public void delAllEnter(int[] enterIds);

    public void addEnter(Enter enter);
}
