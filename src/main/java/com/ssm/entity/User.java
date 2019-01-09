package com.ssm.entity;

/**
 * 说明：User实体类定义
 * @author 梅真好
 * @company 京东商城（上海）
 * @create 2019-01-09 12:41
 */
public class User {

    private int id;//用户ID
    private String name;//用户姓名
    private String address;//用户地址
    private int age;//用户年龄
    private String phone;//用户手机号码

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", age=" + age +
                ", phone='" + phone + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
