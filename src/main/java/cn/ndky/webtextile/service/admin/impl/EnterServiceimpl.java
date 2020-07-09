package cn.ndky.webtextile.service.admin.impl;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.mapper.EnterMapper;
import cn.ndky.webtextile.pojo.Enter;
import cn.ndky.webtextile.service.admin.EnterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnterServiceimpl implements EnterService {
    @Autowired
    private EnterMapper enterMapper;

    /**
     * 初始化所有企业表格
     * @return
     */
    @Override
    public RespObj initEnterTable() {
        List<Enter> enterList = enterMapper.getEnterList();
        return RespObj.build(200,"ok",enterList);
    }


    /**
     * 根据企业编号获取该企业
     * @param enterId
     * @return
     */
    @Override
    public RespObj getEnter(int enterId) {
        Enter enter = enterMapper.getEnterByEnterId(enterId);
        return RespObj.build(200,"ok",enter);
    }

    /**
     * 修改企业信息
     * @param enter
     * @return
     */
    @Override
    public RespObj updateEnter(Enter enter) {
        enterMapper.updateEnterByEnterId(enter);
        return RespObj.build(200,"ok",null);
    }

    /**
     * 删除企业
     * @param enterId
     * @return
     */
    @Override
    public RespObj delEnter(int enterId) {
        enterMapper.delEnterByEnterId(enterId);
        return RespObj.build(200,"ok",null);
    }

    /**
     * 批量删除企业
     * @param enterIds
     * @return
     */
    @Override
    public RespObj delAllEnter(int[] enterIds) {
        enterMapper.delAllEnter(enterIds);
        return RespObj.build(200,"ok",null);
    }

    /**
     * 添加企业
     * @param enter
     * @return
     */
    @Override
    public RespObj addEnter(Enter enter) {
        enterMapper.addEnter(enter);
        return RespObj.build(200,"ok",null);
    }
}
