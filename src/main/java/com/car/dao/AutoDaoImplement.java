package com.car.dao;

import com.car.idao.IAutoDAO;
import com.car.model.Auto;
import com.car.util.MemoryStore;

import java.util.List;

public class AutoDaoImplement implements IAutoDAO {
    @Override
    public void add(Auto auto) {
        // agregar auto
        MemoryStore.addAuto(auto);
    }
    @Override
    public void update(Auto auto) {
        // actualizar auto
        MemoryStore.editAuto(auto);
    }
    @Override
    public List<Auto> get() {
        // listar autos
        return MemoryStore.getAutos();
    }
    @Override
    public Auto getAuto(String placa) {
        // listar un auto
        return MemoryStore.getAuto(placa);
    }
    @Override
    public void detele(String placa) {
        // eliminar auto
        MemoryStore.deleteAuto(placa);
    }
}
