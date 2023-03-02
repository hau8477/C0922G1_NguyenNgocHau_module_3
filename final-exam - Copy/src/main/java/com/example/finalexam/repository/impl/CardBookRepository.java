package com.example.finalexam.repository.impl;

import com.example.finalexam.model.CardBook;
import com.example.finalexam.repository.BaseRepository;
import com.example.finalexam.repository.ICardBookRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CardBookRepository implements ICardBookRepository {

    @Override
    public List<CardBook> selectAll() {
        List<CardBook> cardBooks = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT t.id,t.ma_sach, s.ten_sach, s.tac_gia, t.ma_hoc_sinh, h.ho_ten, h.lop, t.ngay_muon, t.ngay_tra\n" +
                    " FROM the_muon_sach t JOIN hoc_sinh h ON t.ma_hoc_sinh = h.ma_hoc_sinh\n" +
                    " JOIN sach s ON t.ma_sach = s.ma_sach;");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int idCardBook = resultSet.getInt(1);
                int idBook = resultSet.getInt(2);
                String nameBook = resultSet.getString(3);
                String nameHuman = resultSet.getString(4);
                int idStudent = resultSet.getInt(5);
                String nameStudent = resultSet.getString(6);
                String classes = resultSet.getString(7);
                String dateStart = resultSet.getString(8);
                String dateEnd = resultSet.getString(9);

                CardBook cardBook = new CardBook(idCardBook,idBook,idStudent,nameBook,nameHuman,nameStudent,classes,dateStart,dateEnd);
                cardBooks.add(cardBook);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cardBooks;
    }

    @Override
    public boolean insertCardBook(CardBook cardBook) {
        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("" +
                    "INSERT INTO the_muon_sach(ma_sach,ma_hoc_sinh,trang_thai,ngay_muon,ngay_tra)" +
                    " VALUES (?,?,?,?,?)");
            preparedStatement.setInt(1,cardBook.getIdBook());
            preparedStatement.setInt(2,cardBook.getIdStudent());
            preparedStatement.setBoolean(3,cardBook.isStatus());
            preparedStatement.setString(4, cardBook.getDateStart());
            preparedStatement.setString(5, cardBook.getDateEnd());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<CardBook> search(String nameStudent, String nameBook) {
        List<CardBook> cardBooks = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT t.id,t.ma_sach, s.ten_sach, s.tac_gia, t.ma_hoc_sinh, h.ho_ten, h.lop, t.ngay_muon, t.ngay_tra\n" +
                    " FROM the_muon_sach t JOIN hoc_sinh h ON t.ma_hoc_sinh = h.ma_hoc_sinh\n" +
                    " JOIN sach s ON t.ma_sach = s.ma_sach where (h.ho_ten like ? and s.ten_sach like ?);");
            preparedStatement.setString(1,"%" + nameStudent +"%");
            preparedStatement.setString(2,"%" + nameBook +"%");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idCardBook = resultSet.getInt(1);
                int idBook = resultSet.getInt(2);
                String nameBook1 = resultSet.getString(3);
                String nameHuman = resultSet.getString(4);
                int idStudent = resultSet.getInt(5);
                String nameStudent2 = resultSet.getString(6);
                String classes = resultSet.getString(7);
                String dateStart = resultSet.getString(8);
                String dateEnd = resultSet.getString(9);

                CardBook cardBook = new CardBook(idCardBook, idBook, idStudent, nameBook1, nameHuman, nameStudent2, classes, dateStart, dateEnd);
                cardBooks.add(cardBook);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cardBooks;
    }
}
