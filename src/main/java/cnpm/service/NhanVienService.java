package cnpm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cnpm.dao.NhanVienDAO;
import cnpm.daoimp.NhanVienDAOImp;
import cnpm.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienDAOImp {
	
	@Autowired
	NhanVienDAO nhanVienDAO;
	

	public void check() {
		
		nhanVienDAO.check();
	}


	public NhanVien getById(String id) {
		// TODO Auto-generated method stub
		return nhanVienDAO.getById(id);
	}


}