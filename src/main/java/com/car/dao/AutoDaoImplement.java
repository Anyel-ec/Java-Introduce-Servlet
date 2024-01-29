package com.car.dao;

import com.car.idao.IAutoDAO;
import com.car.model.Auto;
import com.car.util.MemoryStore;

import java.util.List;

public class AutoDaoImplement implements IAutoDAO {
    @Override
    public void add(Auto auto) {
        MemoryStore.addAuto(auto);

    }

    @Override
    public void update(Auto auto) {
        MemoryStore.editAuto(auto);
    }

    @Override
    public List<Auto> get() {
        return MemoryStore.getAutos();

    }

    @Override
    public Auto getAuto(String placa) {
        return MemoryStore.getAuto(placa);
    }

    @Override
    public void delete(String placa) {
        MemoryStore.deleteAuto(placa);
    }
    @Override
    public Auto getAutoByPlaca(String placa) {
        return MemoryStore.getAuto(placa);
    }

}
