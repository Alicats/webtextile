package cn.ndky.webtextile.service.admin;

import cn.ndky.webtextile.common.RespObj;
import cn.ndky.webtextile.pojo.Enter;

public interface EnterService {

    /**
     * 初始化所有企业列表
     */
    public RespObj initEnterTable();

    /**
     * 根据企业编号获取该企业
     */
    public RespObj getEnter(int enterId);

    /**
     * 修改企业信息
     */
    public RespObj updateEnter(Enter enter);

    /**
     * 删除企业
     */
    public RespObj delEnter(int enterId);

    /**
     * 批量删除企业
     */
    public RespObj delAllEnter(int[] enterIds);

    /**
     * 添加企业
     */
    public RespObj addEnter(Enter enter);
}
