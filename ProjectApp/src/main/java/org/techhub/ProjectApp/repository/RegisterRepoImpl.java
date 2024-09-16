package org.techhub.ProjectApp.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.techhub.ProjectApp.model.AddNotice;
import org.techhub.ProjectApp.model.Login;
import org.techhub.ProjectApp.model.Register;

@Repository("regRepo")
public class RegisterRepoImpl implements RegisterRepo {

    @Autowired
    JdbcTemplate template;

    @Override
    public boolean isAddRegister(final Register register) {
        int value = 0;
        try {
            value = template.update("INSERT INTO register VALUES ('0', ?, ?, ?, ?, ?)", new PreparedStatementSetter() {

                @Override
                public void setValues(PreparedStatement ps) throws SQLException {
                    ps.setString(1, register.getName().trim());
                    ps.setString(2, register.getEmail().trim());
                    ps.setString(3, register.getPassword().trim());
                    ps.setString(4, register.getContact().trim());
                    ps.setString(5, register.getRole().trim());
                }
            });
        } catch (DataAccessException e) {
        	System.out.println(e);
            return false;
        }
        return value > 0;
    }

    @Override
    public boolean isValidateUser(Login model) {
        List<Login> list = null;
        try {
            list = template.query("select email,password from register where email = ? AND password= ?",
                    new PreparedStatementSetter() {
                        @Override
                        public void setValues(PreparedStatement ps) throws SQLException {
                            ps.setString(1, model.getEmail().trim());
                            ps.setString(2, model.getPassword().trim());
                        }
                    }, new RowMapper<Login>() {
                        @Override
                        public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
                            Login l = new Login();
                            l.setEmail(rs.getString("email").trim());
                            l.setPassword(rs.getString("password").trim());
                            return l;
                        }
                    });
        } catch (DataAccessException e) {
            return false;
        }
        return list != null && !list.isEmpty();
    }

    @Override
    public boolean isAddNotice(AddNotice notice) {
        int add = template.update("INSERT INTO notices VALUES ('0', ?, ?, ?, ?, ?)", new PreparedStatementSetter() {

            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, notice.getNname().trim());
                ps.setString(2, notice.getNdescription().trim());
                ps.setString(3, notice.getNdate().trim());
                ps.setString(4, notice.getLocation().trim());
                ps.setString(5, notice.getOrganizeFor().trim());
            }
        });
        return add > 0;
    }

    @Override
    public List<AddNotice> getAllNotices() {
        return template.query("select * from notices",new RowMapper<AddNotice>() {

            @Override
            public AddNotice mapRow(ResultSet rs, int rowNum) throws SQLException {
                AddNotice an = new AddNotice();
                an.setNid(rs.getInt(1));
                an.setNname(rs.getString(2));
                an.setNdescription(rs.getString(3));
                an.setNdate(rs.getString(4));
                an.setLocation(rs.getString(5));
                an.setOrganizeFor(rs.getString(6));
                return an;
            }
        });
    }

    @Override
    public boolean DeleteEmployeeByid(int id) {
        int value = template.update("delete from notices where nid = " + id);
        return value != 0;
    }

    @Override
    public void updateNoticeByid(AddNotice notice) {
        String sql = "UPDATE notices SET nname = ?, ndescription = ?, ndate = ?, location = ?, organizefor = ? WHERE nid = ?";
        int value = template.update(sql, new PreparedStatementSetter() {

            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, notice.getNname().trim());
                ps.setString(2, notice.getNdescription().trim());
                ps.setString(3, notice.getNdate());
                ps.setString(4, notice.getLocation());
                ps.setString(5, notice.getOrganizeFor());
                ps.setInt(6, notice.getNid());
            }
        });
        if (value != 0)
            System.out.println("Data Updated");
        else
            System.out.println("No Data Updated");
    }

    @Override
    public List<AddNotice> getDataById(int id) {
        return template.query("select * from notices where nid=" + id, new RowMapper<AddNotice>() {

            @Override
            public AddNotice mapRow(ResultSet rs, int rowNum) throws SQLException {
                AddNotice ad = new AddNotice();
                ad.setNid(rs.getInt(1));
                ad.setNname(rs.getString(2));
                ad.setNdescription(rs.getString(3));
                ad.setNdate(rs.getString(4));
                ad.setLocation(rs.getString(5));
                ad.setOrganizeFor(rs.getString(6));
                return ad;
            }
        });
    }
    @Override
    public Register getUserProfileByEmail(Register register) {
    	
        String sql = "SELECT * FROM register WHERE email = ?";
        return template.queryForObject(sql, new Object[]{register.getEmail()}, (rs, rowNum) -> {
            Register reg = new Register();
            
            reg.setName(rs.getString("name"));
            reg.setEmail(rs.getString("email"));
            reg.setContact(rs.getString("contact"));
            reg.setRole(rs.getString("role"));
            return reg;
        });
    }

	@Override
	public List<Register> getAllUsers() {
		
		return template.query("select * from Register", new RowMapper<Register>() {

			@Override
			public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Register register = new Register();
				register.setRid(rs.getString(1));
				register.setName(rs.getString(2));
				register.setEmail(rs.getString(3));
				register.setPassword(rs.getString(4));
				register.setContact(rs.getString(5));
				register.setRole(rs.getString(6));
				return register;
			}

		});
	}

	@Override
	public List<AddNotice> getAllNoticesRoleWise(String role) {
		return template.query("select * from notices where organizeFor=? or organizeFor=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "all");
				ps.setString(2, role);
				
			}
			
		},new RowMapper<AddNotice>() {

            @Override
            public AddNotice mapRow(ResultSet rs, int rowNum) throws SQLException {
                AddNotice an = new AddNotice();
                an.setNid(rs.getInt(1));
                an.setNname(rs.getString(2));
                an.setNdescription(rs.getString(3));
                an.setNdate(rs.getString(4));
                an.setLocation(rs.getString(5));
                an.setOrganizeFor(rs.getString(6));
                return an;
            }
        });
	}

	@Override
	public String getRoleUsingEmailAndPassword(String email, String password) {
		List<Register> modellist=template.query("select role from register where email=? and password=?",new PreparedStatementSetter(){

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
			ps.setString(1,email);
			ps.setString(2,password);
			
			}
			
		},new RowMapper<Register>() {

					@Override
					public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
						Register r=new Register();
						r.setRole(rs.getString(1));
						return r;
					}
		});
		return modellist.get(0).getRole();
	}

	@Override
	public List<AddNotice> searchAllNoticesRoleWise(String role) {
		return template.query("select * from notices where organizeFor=? or organizeFor=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, "all");
				ps.setString(2, role);
				
			}
			
		},new RowMapper<AddNotice>() {

            @Override
            public AddNotice mapRow(ResultSet rs, int rowNum) throws SQLException {
                AddNotice an = new AddNotice();
                an.setNid(rs.getInt(1));
                an.setNname(rs.getString(2));
                an.setNdescription(rs.getString(3));
                an.setNdate(rs.getString(4));
                an.setLocation(rs.getString(5));
                an.setOrganizeFor(rs.getString(6));
                return an;
            }
        });
	}

	@Override
	public boolean DeleteUserByEmail(String email) {
	    String sql = "delete from Register where email = ?";
	    int value = template.update(sql, email);  // Use parameterized query
	    return value != 0;
	}

	@Override
	public void updateUserByEmail(Register register) {
		 String sql = "UPDATE Register SET name = ?, password = ?, contact = ?, role = ? WHERE email = ?";
		 int value = template.update(sql, new PreparedStatementSetter() {

		        @Override
		        public void setValues(PreparedStatement ps) throws SQLException {
		            ps.setString(1, register.getName().trim());
		            ps.setString(2, register.getPassword().trim());
		            ps.setString(3, register.getContact().trim());
		            ps.setString(4, register.getRole().trim());
		            ps.setString(5, register.getEmail().trim());
		        }
		    });
		    if (value != 0)
		        System.out.println("User data updated successfully.");
		    else
		        System.out.println("No data was updated. Please check the email.");
		}

	@Override
	public List<Register> getDataByEmail(String email) {
	    return template.query("select * from Register where email = ?", new Object[]{email}, new RowMapper<Register>() {
	        @Override
	        public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
	            Register r = new Register();
	            r.setRid(rs.getString(1));
	            r.setName(rs.getString(2));
	            r.setEmail(rs.getString(3));
	            r.setContact(rs.getString(4));
	            r.setPassword(rs.getString(5));
	            r.setRole(rs.getString(6));
	            return r;
	        }
	    });
	}
}
