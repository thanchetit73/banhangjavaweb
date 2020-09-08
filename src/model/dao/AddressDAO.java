/**
*Project name: ShopBanHang
*Version : 1.0
*Created date : 14 thg 3, 2019
*Description: Create by MyPC
*Copyright (c) 2019 by TeddyShoes. All rights reserved.
*/
package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.bean.Quan_Huyen;
import model.bean.Tinh_ThanhPho;
import model.bean.Xa_Phuong;

/**
 * @author MyPC
 *
 */
public class AddressDAO {
	// Láº¥y toĂ n bá»™ tá»‰nh thĂ nh phá»‘
	public ArrayList<Tinh_ThanhPho> getTinhThanhPho(){
		DBConnect cs = new DBConnect();
		ArrayList<Tinh_ThanhPho> lst = new ArrayList<Tinh_ThanhPho>();
		try {
			cs.KetNoi();
			String sql = "Select * From tinh_thanh_phos";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				Tinh_ThanhPho tinh_thanhpho = new Tinh_ThanhPho();
				tinh_thanhpho.setId(rs.getLong("id")); 
				tinh_thanhpho.setCode(rs.getLong("code"));
				tinh_thanhpho.setDonvi(rs.getString("donvi"));
				tinh_thanhpho.setTen(rs.getString("ten"));
				tinh_thanhpho.setTendaydu(rs.getString("tendaydu"));
				tinh_thanhpho.setTenkhongdau(rs.getString("tenkhongdau"));
				// ThĂªm vĂ o danh sĂ¡ch
				lst.add(tinh_thanhpho);								
			}
			rs.close();
			cs.cn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return lst;
	}
	// Láº¥y toĂ n bá»™ quáº­n/ huyá»‡n theo id tá»‰nh
	public ArrayList<Quan_Huyen> getQuanHuyenById(long idTinhTP){
		DBConnect cs = new DBConnect();
		ArrayList<Quan_Huyen> lst = new ArrayList<Quan_Huyen>();
		try {
			cs.KetNoi();
			String sql = "Select * From quan_huyens Where id_tinhthanhpho=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, idTinhTP);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				Quan_Huyen quan_huyen = new Quan_Huyen();
				quan_huyen.setCode(rs.getLong("code"));
				quan_huyen.setDonvi(rs.getString("donvi"));
				quan_huyen.setId(rs.getLong("id"));
				quan_huyen.setId_tinhthanhpho(rs.getLong("id_tinhthanhpho"));
				quan_huyen.setTen(rs.getString("ten"));
				quan_huyen.setTendaydu(rs.getString("tendaydu"));
				quan_huyen.setTenhanhchinh(rs.getString("tenhanhchinh"));
				quan_huyen.setTenkhongdau(rs.getString("tenkhongdau"));
				quan_huyen.setTenthuong(rs.getString("tenthuong")); 
				lst.add(quan_huyen);								
			}
			rs.close();
			cs.cn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return lst;
	}
	// Láº¥y toĂ n bá»™ xĂ£ phÆ°á»�ng theo id huyá»‡n
	public ArrayList<Xa_Phuong> getXaPhuongById(long idQuanHuyen){
		DBConnect cs = new DBConnect();
		ArrayList<Xa_Phuong> lst = new ArrayList<Xa_Phuong>();
		try {
			cs.KetNoi();
			String sql = "Select * From xa_phuongs Where id_quanhuyen=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setLong(1, idQuanHuyen);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				Xa_Phuong xa_phuong = new Xa_Phuong();
				xa_phuong.setCode(rs.getLong("code"));
				xa_phuong.setDonVi(rs.getString("donvi"));
				xa_phuong.setId(rs.getLong("id"));
				xa_phuong.setId_quanHuyen(rs.getLong("id_quanhuyen"));
				xa_phuong.setTen(rs.getString("ten"));
				xa_phuong.setTenDayDu(rs.getString("tendaydu"));
				xa_phuong.setTenHanhChinh(rs.getString("tenhanhchinh"));
				xa_phuong.setTenKhongDau(rs.getString("tenkhongdau"));
				xa_phuong.setTenThuong(rs.getString("tenthuong")); 
				// ThĂªm vĂ o danh sĂ¡ch
				lst.add(xa_phuong);			
			}
			rs.close();
			cs.cn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return lst;
	}

}
