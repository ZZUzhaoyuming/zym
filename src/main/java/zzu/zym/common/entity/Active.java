package zzu.zym.common.entity;

import java.io.Serializable;

public class Active implements Serializable{
    String name;
    int value;

    @Override
    public String toString() {
        return "Active{" +
                "name='" + name + '\'' +
                ", value=" + value +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public Active() {

    }

    public Active(String name, int value) {

        this.name = name;
        this.value = value;
    }
}
