<?php

class Detalle_orden_trabajo_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getLastId()
    {
        $sql = "SELECT MAX(id_detalle_orden_trabajo) as LAST_ID
        FROM detalle_orden_trabajo;";
        $query = $this->db->query($sql);
        // var_dump($this->db->last_query());

        if ($query->num_rows() > 0)
            return $query;
        else
            return false;
    }


    public function getDetalleOrdenTrabajo($where = '')
    {
        $sql = "SELECT dot.*,
        dot.id_detalle_orden_trabajo,
        p.nombre as PRODUCTO,
        p.imagen,
        p.descripcion as descripcion_producto
        FROM detalle_orden_trabajo dot
        LEFT JOIN producto p ON p.id_producto=dot.id_producto
        WHERE dot.ESTADO=1 $where
        ORDER BY id_detalle_orden_trabajo ASC;";
        $query = $this->db->query($sql);
        // var_dump($this->db->last_query());

        if ($query->num_rows() > 0)
            return $query;
        else
            return false;
    }

    public function getTerminacionesByDetalle($where = '')
    {
        $sql = "SELECT dot.*,
        ot.descuento,
        dot.id_detalle_orden_trabajo,
        p.nombre as PRODUCTO,
        p.imagen as IMAGEN,
        p.descripcion as descripcion_producto,
        tv.NOMBRE as TIPO_VALOR,
        GROUP_CONCAT(DISTINCT t.nombre separator ', ') as terminaciones
        
        FROM detalle_orden_trabajo dot
        LEFT JOIN orden_trabajo ot ON ot.id_orden_trabajo=dot.id_detalle_orden_trabajo
        LEFT JOIN producto p ON p.id_producto=dot.id_producto
        LEFT JOIN terminacion_orden_trabajo tot ON tot.id_detalle_orden_trabajo=dot.id_detalle_orden_trabajo AND tot.ESTADO=1
        LEFT JOIN terminacion t ON t.id_terminacion=tot.id_terminacion AND tot.ESTADO=1
        JOIN tipo_valor tv ON tv.id_producto=p.id_producto
        WHERE dot.ESTADO=1 $where
        GROUP BY dot.id_detalle_orden_trabajo
        ORDER BY id_detalle_orden_trabajo desc;";
        $query = $this->db->query($sql);

        if ($query->num_rows() > 0)
            return $query;
        else
            return false;
    }

    public function getDetallesReporte($where = "")
    {
        $sql = "SELECT
        rd.ID_REPORTE_DETALLE,
        dot.ID_ORDEN_TRABAJO AS ID_ORDEN_TRABAJO,
        dot.ID_DETALLE_ORDEN_TRABAJO,
        dot.ESTADO_SERVICIO,
        dot.DESCRIPCION,
        ot.DESCUENTO,
        ot.ID_TIEMPO_ENTREGA AS ID_TIEMPO_ENTREGA,
        te.NOMBRE AS TIEMPO_ENTREGA,
        IFNULL(MIN(pa.FECHA_PAGO),
        'No aplica') AS FECHA_PAGO_OT,
        cl.ID_CLIENTE AS ID_CLIENTE,
        cl.NOMBRE AS NOMBRE_CLIENTE,
        cl.CORREO AS CORREO_CLIENTE,
        pr.ID_PRODUCTO AS ID_PRODUCTO,
        pr.NOMBRE AS NOMBRE_PRODUCTO,
        pr.DESCRIPCION AS DESCRIPCION_PRODUCTO,
        ca.ID_CATEGORIA AS ID_CATEGORIA,
        ca.NOMBRE AS NOMBRE_CATEGORIA,
        dot.ANCHO AS ANCHO,
        dot.ALTO AS ALTO,
        dot.AREA AS AREA,
        dot.CANTIDAD AS CANTIDAD,
        GROUP_CONCAT(DISTINCT t.nombre SEPARATOR ', ') AS TERMINACIONES,
        u.first_name AS VENDEDOR,
        dot.VALOR_M2 AS VALOR_M2,
        dot.VALOR_UNITARIO AS VALOR_UNITARIO,
        dot.VALOR_TOTAL AS VALOR_TOTAL,
        dot.VALOR_ADICIONAL AS VALOR_ADICIONAL,
        rd.INSTALACION,
        rd.CLIENTE_ENVIA_1,
        rd.ID_TRABAJADOR_1,
        u1.first_name AS NOMBRE_TRABAJADOR_1,
        rd.PROPUESTA_2,
        rd.ID_TRABAJADOR_2,
        u2.first_name AS NOMBRE_TRABAJADOR_2,
        rd.CLIENTE_APRUEBA_3,
        rd.ID_TRABAJADOR_3,
        u3.first_name AS NOMBRE_TRABAJADOR_3,
        rd.REALIZA_4,
        rd.ID_TRABAJADOR_4,
        u4.first_name AS NOMBRE_TRABAJADOR_4,
        rd.PROBLEMA_5,
        rd.ID_TRABAJADOR_5,
        u5.first_name AS NOMBRE_TRABAJADOR_5

        FROM
            detalle_orden_trabajo dot
        JOIN orden_trabajo ot ON
            ot.ID_ORDEN_TRABAJO = dot.ID_ORDEN_TRABAJO
        JOIN tiempo_entrega te ON
            te.ID_TIEMPO_ENTREGA = ot.ID_TIEMPO_ENTREGA
        LEFT JOIN pago pa ON
            dot.ID_ORDEN_TRABAJO = pa.ID_ORDEN_TRABAJO
        JOIN cliente cl ON
            cl.ID_CLIENTE = ot.ID_CLIENTE
        JOIN producto pr ON
            pr.ID_PRODUCTO = dot.ID_PRODUCTO
        JOIN categoria ca ON
            ca.ID_CATEGORIA = pr.ID_CATEGORIA
        LEFT JOIN terminacion_orden_trabajo tot ON
            tot.id_detalle_orden_trabajo = dot.id_detalle_orden_trabajo AND tot.ESTADO = 1
        LEFT JOIN terminacion t ON
            t.id_terminacion = tot.id_terminacion AND tot.ESTADO = 1
        LEFT JOIN tipo_valor tv ON
            tv.id_producto = pr.id_producto
        LEFT JOIN reporte_detalle rd ON
            rd.ID_DETALLE_ORDEN_TRABAJO = dot.ID_DETALLE_ORDEN_TRABAJO
            LEFT JOIN users u ON
            u.id = ot.ID_USUARIO
        LEFT JOIN users u1 ON
            u1.id = rd.ID_TRABAJADOR_1
        LEFT JOIN users u2 ON
            u2.id = rd.ID_TRABAJADOR_2
        LEFT JOIN users u3 ON
            u3.id = rd.ID_TRABAJADOR_3
        LEFT JOIN users u4 ON
            u4.id = rd.ID_TRABAJADOR_4
        LEFT JOIN users u5 ON
            u5.id = rd.ID_TRABAJADOR_5
        WHERE
            dot.ESTADO = 1 AND ot.ESTADO = 1 $where
        GROUP BY
            dot.ID_DETALLE_ORDEN_TRABAJO
        ORDER BY
            dot.ID_DETALLE_ORDEN_TRABAJO DESC;";
        $query = $this->db->query($sql);

        if ($query->num_rows() > 0)
            return $query;
        else
            return false;
    }

    public function insertDetalleOrdenTrabajo($tabla, $data)
    {
        $query = $this->db->insert($tabla, $data);
        if ($query)
            return $this->db->insert_id();
        else
            return false;
    }
    public function updateDetalleOrdenTrabajo($tabla, $comparar, $datos, $id)
    {
        $this->db->where($comparar, $id);
        $result = $this->db->update($tabla, $datos);
        // var_dump($this->db->last_query());

        if ($result)
            return true;
        else
            return false;
    }

    public function deleteReporte($where)
    {
        $fecha = date('Y-m-d H:i:s');

        $sql = "UPDATE reporte_detalle SET ESTADO=0, FECHA_BAJA ='$fecha' WHERE ESTADO=1 $where";
        $query = $this->db->query($sql);
        // var_dump($this->db->last_query());

        if ($query)
            return true;
        else
            return false;
    }

    public function deleteDetalles($where, $fecha)
    {

        $sql = "UPDATE detalle_orden_trabajo SET ESTADO=0, FECHA_BAJA ='$fecha' WHERE ESTADO=1 $where";
        $query = $this->db->query($sql);
        // var_dump($this->db->last_query());

        if ($query)
            return true;
        else
            return false;
    }
}
