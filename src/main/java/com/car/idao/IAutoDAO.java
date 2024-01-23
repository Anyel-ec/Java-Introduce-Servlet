package com.car.idao;

import com.car.model.Auto;
import java.util.List;

public interface IAutoDAO {
    // agregar auto
    void add(Auto auto);
    // actualizar auto
    void update (Auto auto);
    // listar autos
    List<Auto> get();
    // listar un auto
    Auto getAuto(String placa);
    // eliminar auto
    void detele (String placa);
}
