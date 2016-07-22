
package table;

import javax.persistence.*;

@Entity
public class VotingSystem {
    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String pass;
    private String party;
    private int age;
    private int votes;
    private String status;
    private String role;
    
    public VotingSystem(){}

    public VotingSystem(String name, String pass, String party, int age) {
        this.name = name;
        this.pass = pass;
        this.party = party;
        this.age = age;
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

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    
}
