<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Detalle_orden_trabajo extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('detalle_orden_trabajo_model');
        $this->load->model('pago/pago_model');

        $this->load->library(['ion_auth', 'form_validation']);

        date_default_timezone_set('America/Santiago');
    }

    public function getLastId()
    {
        $request = new stdClass();
        $request->id = null;
        $request->data = [];

        $fecha = date('Y-m-d H:i:s');

        //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
        $response = new stdClass();
        $response->id = null;
        $response->data = [];
        $response->proceso = 0;
        $response->errores = [];
        if ($res = $this->detalle_orden_trabajo_model->getLastId()) {
            foreach ($res->result() as $r) {
                $row = new stdClass();
                $id_detalle_orden_trabajo = $r->LAST_ID;
            }
            $response->proceso = 1;
        }
        echo json_encode($id_detalle_orden_trabajo);
    }


    public function getDetalleOrdenTrabajo($id_orden_trabajo)
    {
        if (true) {
            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];


            $id_orden_trabajo ? $where = "AND dot.id_orden_trabajo=" . $id_orden_trabajo : $where = null;


            if ($query = $this->detalle_orden_trabajo_model->getTerminacionesByDetalle($where)) {
                foreach ($query->result() as $res) {
                    $row = null;
                    $row = new stdClass();
                    $row->id_detalle_orden_trabajo = $res->ID_DETALLE_ORDEN_TRABAJO;
                    $row->id_producto = $res->ID_PRODUCTO;
                    $row->id_categoria = $res->ID_CATEGORIA;
                    $row->terminaciones = $res->terminaciones;
                    $row->producto = $res->PRODUCTO;
                    $row->cantidad = $res->CANTIDAD;
                    $row->ancho = $res->ANCHO;
                    $row->alto = $res->ALTO;
                    $row->area = $res->AREA;
                    $row->descripcion = $res->DESCRIPCION;
                    $row->descripcion_producto = $res->descripcion_producto;
                    $row->imagen = $res->IMAGEN;
                    $row->id_tipo_valor = $res->ID_TIPO_VALOR;
                    $row->tipo_valor = $res->TIPO_VALOR;
                    $row->descuento = $res->descuento;
                    $row->valor_m2 = $res->VALOR_M2;
                    $row->valor_unidad = $res->VALOR_UNITARIO;
                    $row->valor_total = $res->VALOR_TOTAL;
                    $row->valor_adicional = $res->VALOR_ADICIONAL;
                    $row->fecha_creacion = $res->FECHA_CREACION;
                    $row->estado = $res->ESTADO;


                    array_push($response->data, $row);
                }
            }
            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }

    public function getReporteOrdenTrabajo()
    {
        if (true) {
            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            if ($this->input->post('id_detalle_orden_trabajo')) {
                $id_detalle_orden_trabajo = trim($this->security->xss_clean($this->input->post('id_detalle_orden_trabajo', true)));
                $response->errores[] = "Sin id detalle orden trabajo";
            } else {
                $id_detalle_orden_trabajo = "";
            }


            $id_detalle_orden_trabajo != "" ? $where = "AND dot.id_detalle_orden_trabajo=" . $id_detalle_orden_trabajo : $where = null;



            if ($query = $this->detalle_orden_trabajo_model->getDetallesReporte($where)) {
                foreach ($query->result() as $res) {
                    $row = null;
                    $row = new stdClass();
                    $row->id_detalle_orden_trabajo = $res->ID_DETALLE_ORDEN_TRABAJO;
                    $row->id_orden_trabajo = $res->ID_ORDEN_TRABAJO;
                    $row->id_reporte_detalle = $res->ID_REPORTE_DETALLE;
                    $row->id_producto = $res->ID_PRODUCTO;
                    $row->id_categoria = $res->ID_CATEGORIA;
                    $row->id_cliente = $res->ID_CLIENTE;
                    $row->estado_servicio = $res->ESTADO_SERVICIO;
                    $row->fecha_pago = $res->FECHA_PAGO_OT;
                    $row->tiempo_entrega = $res->TIEMPO_ENTREGA;
                    $row->nombre_cliente = $res->NOMBRE_CLIENTE;
                    $row->correo_cliente = $res->CORREO_CLIENTE;
                    $row->terminaciones = $res->TERMINACIONES;
                    $row->nombre_producto = $res->NOMBRE_PRODUCTO;
                    $row->cantidad = $res->CANTIDAD;
                    $row->ancho = $res->ANCHO;
                    $row->alto = $res->ALTO;
                    $row->area = $res->AREA;
                    $row->descripcion = $res->DESCRIPCION;
                    $row->descripcion_producto = $res->DESCRIPCION_PRODUCTO;
                    $row->descuento = $res->DESCUENTO;
                    $row->valor_m2 = $res->VALOR_M2;
                    $row->valor_unidad = $res->VALOR_UNITARIO;
                    $row->valor_total = $res->VALOR_TOTAL;
                    $row->valor_adicional = $res->VALOR_ADICIONAL;
                    $row->vendedor = $res->VENDEDOR;
                    $row->instalacion = $res->INSTALACION;
                    $row->cliente_envia_1 = $res->CLIENTE_ENVIA_1;
                    $row->id_trabajador_1 = $res->ID_TRABAJADOR_1;
                    $row->nombre_trabajador_1 = $res->NOMBRE_TRABAJADOR_1;
                    $row->propuesta_2 = $res->PROPUESTA_2;
                    $row->id_trabajador_2 = $res->ID_TRABAJADOR_2;
                    $row->nombre_trabajador_2 = $res->NOMBRE_TRABAJADOR_2;
                    $row->cliente_aprueba_3 = $res->CLIENTE_APRUEBA_3;
                    $row->id_trabajador_3 = $res->ID_TRABAJADOR_3;
                    $row->nombre_trabajador_3 = $res->NOMBRE_TRABAJADOR_3;
                    $row->realiza_4 = $res->REALIZA_4;
                    $row->id_trabajador_4 = $res->ID_TRABAJADOR_4;
                    $row->nombre_trabajador_4 = $res->NOMBRE_TRABAJADOR_4;
                    $row->problema_5 = $res->PROBLEMA_5;
                    $row->id_trabajador_5 = $res->ID_TRABAJADOR_5;
                    $row->nombre_trabajador_5 = $res->NOMBRE_TRABAJADOR_5;

                    if ($query2 = $this->pago_model->getPagoOT(" AND p.id_orden_trabajo=$row->id_orden_trabajo")) {
                        foreach ($query2->result() as $res2) {
                            $row->monto_total = $res2->MONTO_TOTAL;
                            $row->deuda = $row->valor_total - $row->monto_total;
                            $row->abono = $row->monto_total;
                            if ($row->deuda == 0 || ($row->deuda < $row->monto_total)) {
                                $pendiente = false;
                            } else {
                                $pendiente = true;
                            }
                        }
                    }
                    $row->pendiente = $pendiente;



                    array_push($response->data, $row);
                }
            }
            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }


    public function getDetalleOrdenTrabajoTabla()
    {
        if (true) {
            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');
            $where = '';

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            if (is_numeric($this->input->post('id_orden_trabajo'))) {
                $request->id = trim($this->security->xss_clean($this->input->post('id_orden_trabajo', true)));
            } else { //SI NO, ALMACENAMOS EL ERROR EN UN ARRAY PARA DEVOLVERLO COMO RESPUESTA.
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }

            $request->id ? $where = " AND id_orden_trabajo=$request->id" : $where = '';


            if (sizeof($response->errores) == 0) {
                if ($query = $this->detalle_orden_trabajo_model->getDetalleOrdenTrabajo($where)) {
                    foreach ($query->result() as $res) {
                        $row = null;
                        $row = new stdClass();
                        $row->id_detalle_orden_trabajo = $res->ID_DETALLE_COTIZACION;
                        $row->id_producto = $res->ID_PRODUCTO;
                        $row->id_categoria = $res->ID_CATEGORIA;
                        $row->producto = $res->PRODUCTO;
                        $row->cantidad = $res->CANTIDAD;
                        $row->ancho = $res->ANCHO;
                        $row->alto = $res->ALTO;
                        $row->area = $res->AREA;
                        $row->descripcion = $res->DESCRIPCION;
                        $row->tipo_valor = $res->ID_TIPO_VALOR;
                        $row->valor_m2 = $res->VALOR_M2;
                        $row->valor_unidad = $res->VALOR_UNITARIO;
                        $row->valor_adicional = $res->VALOR_ADICIONAL;
                        $row->valor_total = $res->VALOR_TOTAL;
                        $row->fecha_creacion = $res->FECHA_CREACION;
                        $row->estado = $res->ESTADO;

                        array_push($response->data, $row);
                    }
                }
            } else {
                echo 'error';
            }
            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }


    public function getDetalleOrdenTrabajoById()
    {
        if (true) {

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];


            //DECLARACION DE VARIABLES DE FILTRO PARA QUERY
            $where = '';

            if (is_numeric($this->input->post('id_detalle_orden_trabajo'))) {
                $request->id = trim($this->security->xss_clean($this->input->post('id_detalle_orden_trabajo', true)));
            } else { //SI NO, ALMACENAMOS EL ERROR EN UN ARRAY PARA DEVOLVERLO COMO RESPUESTA.
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }

            $request->id ? $where = " AND dot.id_detalle_orden_trabajo=$request->id" : $where = '';


            if (sizeof($response->errores) == 0) {
                if ($query = $this->detalle_orden_trabajo_model->getDetalleOrdenTrabajo($where)) {
                    foreach ($query->result() as $res) {
                        $row = null;
                        $row = new stdClass();
                        $row->id_detalle_orden_trabajo = $res->ID_DETALLE_ORDEN_TRABAJO;
                        $row->id_orden_trabajo = $res->ID_ORDEN_TRABAJO;
                        $row->id_categoria = $res->ID_CATEGORIA;
                        $row->id_producto = $res->ID_PRODUCTO;
                        $row->producto = $res->PRODUCTO;
                        $row->cantidad = $res->CANTIDAD;
                        $row->ancho = $res->ANCHO;
                        $row->alto = $res->ALTO;
                        $row->area = $res->AREA;
                        $row->descripcion = $res->DESCRIPCION;
                        $row->imagen = $res->imagen;
                        $row->descripcion_producto = $res->descripcion_producto;
                        $row->tipo_valor = $res->ID_TIPO_VALOR;
                        $row->valor_m2 = $res->VALOR_M2;
                        $row->valor_unitario = $res->VALOR_UNITARIO;
                        $row->valor_adicional = $res->VALOR_ADICIONAL;
                        $row->valor_total = $res->VALOR_TOTAL;
                        $row->fecha_creacion = $res->FECHA_CREACION;
                        $row->estado = $res->ESTADO;

                        array_push($response->data, $row);
                    }
                    $response->proceso = 1;
                }
            }

            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }

    public function insertDetalleOrdenTrabajo()
    {
        if (true) {

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];


            if (!empty($this->input->post('id_orden_trabajo'))) {
                $request->id_orden_trabajo = $this->security->xss_clean($this->input->post('id_orden_trabajo'));
            }

            if (!empty($this->input->post('id_categoria'))) {
                $request->id_categoria = $this->security->xss_clean($this->input->post('id_categoria'));
            }

            if (!empty($this->input->post('id_producto'))) {
                $request->id_producto = $this->security->xss_clean($this->input->post('id_producto'));
            }

            if (!empty($this->input->post('cantidad'))) {
                $request->cantidad = $this->security->xss_clean($this->input->post('cantidad'));
            }

            if (!empty($this->input->post('ancho'))) {
                $request->ancho = $this->security->xss_clean($this->input->post('ancho'));
            }

            if (!empty($this->input->post('alto'))) {
                $request->alto = $this->security->xss_clean($this->input->post('alto'));
            }

            if (!empty($this->input->post('area'))) {
                $request->area = $this->security->xss_clean($this->input->post('area'));
            }

            if ($this->input->post('descripcion') != null || $this->input->post('descripcion') != "" || !empty($this->input->post('descripcion'))) {
                $request->descripcion = $this->security->xss_clean($this->input->post('descripcion'));
            } else if ($this->input->post('descripcion') == null || $this->input->post('descripcion') == "" || empty($this->input->post('descripcion'))) {
                $request->descripcion = " ";
            }

            if (!empty($this->input->post('tipo_valor'))) {
                $request->id_tipo_valor = $this->security->xss_clean($this->input->post('tipo_valor'));
            }

            if (!empty($this->input->post('valor_m2'))) {
                $request->valor_m2 = $this->security->xss_clean($this->input->post('valor_m2'));
            }

            if (!empty($this->input->post('valor_unitario'))) {
                $request->valor_unitario = $this->security->xss_clean($this->input->post('valor_unitario'));
            }

            if (!empty($this->input->post('valor_adicional'))) {
                $request->valor_adicional = $this->security->xss_clean($this->input->post('valor_adicional'));
            } else {
                $request->valor_adicional = 0;
            }

            if (!empty($this->input->post('valor_total'))) {
                $request->valor_total = $this->security->xss_clean($this->input->post('valor_total'));
            }

            //ALMACENAMOS LOS DATOS QUE VIENEN DEL POST, QUE REEMPLAZARAN A LA FILA ACTUAL EN LA BASE DE DATOS.
            $datos = array(
                'id_orden_trabajo' => $request->id_orden_trabajo,
                'id_producto' => $request->id_producto,
                'id_categoria' => $request->id_categoria,
                'cantidad' => $request->cantidad,
                'ancho' => $request->ancho,
                'alto' => $request->alto,
                'area' => $request->area,
                'estado_servicio' => 1,
                'descripcion' => $request->descripcion,
                'id_tipo_valor' => $request->id_tipo_valor,
                'valor_m2' => $request->valor_m2,
                'valor_unitario' => $request->valor_unitario,
                'valor_adicional' => $request->valor_adicional,
                'valor_total' => $request->valor_total,
                'fecha_creacion' => $fecha,
                'estado' => 1

            );

            //INSERCION, ACTUALIZACION U OPERACIONES
            if ($query = $this->detalle_orden_trabajo_model->insertDetalleOrdenTrabajo('detalle_orden_trabajo', $datos)) {
                $response->proceso = 1;
                $response->id = $query;
                $response->data = $datos;

                $datos2 = array(
                    'id_detalle_orden_trabajo' => $response->id,
                    'instalacion' => "NO",
                    'fecha_creacion' => $fecha,
                    'estado' => 1
                );
                if ($query2 = $this->detalle_orden_trabajo_model->insertDetalleOrdenTrabajo('reporte_detalle', $datos2)) {
                    $response->proceso = 1;
                }
            } else {
                $response->errores[] = "El dato no pudo ser ingresado";
            }

            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }
    public function updateDetalleOrdenTrabajo()
    {
        if (true) {

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            //COMPROBAMOS SI VIENE UN ID MEDIANTE LA PETICION POST, Y SI ES QUE VIENE LO GUARDAMOS (SI NO VIENE EL ID NO ES POSIBLE EDITAR, YA QUE NO ESTAMOS APUNTANDO A NINGUNA TUPLA DE DATOS)
            if ($this->input->post('id_detalle_orden_trabajo')) {
                $request->id = trim($this->security->xss_clean($this->input->post('id_detalle_orden_trabajo', true)));
            } else { //SI NO, ALMACENAMOS EL ERROR EN UN ARRAY PARA DEVOLVERLO COMO RESPUESTA.
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }

            if (sizeof($response->errores) == 0) {
                //VERIFICAMOS LAS VARIABLES QUE RECIBIMOS PARA EDITAR.
                if (!empty($this->input->post('id_orden_trabajo'))) {
                    $request->id_orden_trabajo = $this->security->xss_clean($this->input->post('id_orden_trabajo'));
                }

                if (!empty($this->input->post('id_categoria'))) {
                    $request->id_categoria = $this->security->xss_clean($this->input->post('id_categoria'));
                }

                if (!empty($this->input->post('id_producto'))) {
                    $request->id_producto = $this->security->xss_clean($this->input->post('id_producto'));
                }

                if (!empty($this->input->post('cantidad'))) {
                    $request->cantidad = $this->security->xss_clean($this->input->post('cantidad'));
                }

                if (!empty($this->input->post('ancho'))) {
                    $request->ancho = $this->security->xss_clean($this->input->post('ancho'));
                }

                if (!empty($this->input->post('alto'))) {
                    $request->alto = $this->security->xss_clean($this->input->post('alto'));
                }

                if (!empty($this->input->post('area'))) {
                    $request->area = $this->security->xss_clean($this->input->post('area'));
                }

                if (!empty($this->input->post('descripcion'))) {
                    $request->descripcion = $this->security->xss_clean($this->input->post('descripcion'));
                }

                if (!empty($this->input->post('tipo_valor'))) {
                    $request->id_tipo_valor = $this->security->xss_clean($this->input->post('tipo_valor'));
                }

                if (!empty($this->input->post('valor_m2'))) {
                    $request->valor_m2 = $this->security->xss_clean($this->input->post('valor_m2'));
                }

                if (!empty($this->input->post('valor_unitario'))) {
                    $request->valor_unitario = $this->security->xss_clean($this->input->post('valor_unitario'));
                }

                if (!empty($this->input->post('valor_adicional'))) {
                    $request->valor_adicional = $this->security->xss_clean($this->input->post('valor_adicional'));
                }

                if (!empty($this->input->post('valor_total'))) {
                    $request->valor_total = $this->security->xss_clean($this->input->post('valor_total'));
                }


                //ALMACENAMOS LOS DATOS QUE VIENEN DEL POST, QUE REEMPLAZARAN A LA FILA ACTUAL EN LA BASE DE DATOS.
                $datos = array(
                    'id_orden_trabajo' => $request->id_orden_trabajo,
                    'id_categoria' => $request->id_categoria,
                    'id_producto' => $request->id_producto,
                    'cantidad' => $request->cantidad,
                    'ancho' => $request->ancho,
                    'alto' => $request->alto,
                    'area' => $request->area,
                    'descripcion' => $request->descripcion,
                    'id_tipo_valor' => $request->id_tipo_valor,
                    'valor_m2' => $request->valor_m2,
                    'valor_unitario' => $request->valor_unitario,
                    'valor_adicional' => $request->valor_adicional,
                    'valor_total' => $request->valor_total,
                    'fecha_modificacion' => $fecha,
                    'estado' => 1
                );
            }


            //SI ES QUE NO HAY ERRORES, PROCEDEMOS A HACER LA PETICION MEDIANTE UN LLAMADO A LA FUNCION DEL MODELO.
            if (sizeof($response->errores) == 0) {
                if ($query = $this->detalle_orden_trabajo_model->updateDetalleOrdenTrabajo('detalle_orden_trabajo', 'ID_DETALLE_COTIZACION', $datos, $request->id)) {
                    //SI EL PROCESO ES EXITOSO, DEVOLVERA UN VALOR DENTRO DEL ARRAY DE RESPUESTA IGUAL A 1
                    $response->proceso = 1;
                    $response->id = $query;
                    $response->data = $datos;
                }
            } else {
                $response->errores[] = "Ocurrió un problema al procesar la edicion";
            }

            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }

    public function deleteDetalleOrdenTrabajo()
    {
        if (true) {

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            $where = '';

            //COMPROBAMOS SI VIENE UN ID MEDIANTE LA PETICION POST, Y SI ES QUE VIENE LO GUARDAMOS.
            if ($this->input->post('id_detalle_orden_trabajo')) {
                $request->id = $this->security->xss_clean($this->input->post('id_detalle_orden_trabajo'));
            } else { //SI NO, ALMACENAMOS EL ERROR EN UN ARRAY PARA DEVOLVERLO COMO RESPUESTA.
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }

            $where = " AND id_detalle_orden_trabajo=$request->id";


            //SI ES QUE NO HAY ERRORES, PROCEDEMOS A HACER LA PETICION MEDIANTE UN LLAMADO A LA FUNCION DEL MODELO.
            if (sizeof($response->errores) == 0) {
                if ($this->detalle_orden_trabajo_model->updateDetalleOrdenTrabajo("detalle_orden_trabajo", "ID_DETALLE_ORDEN_TRABAJO", array('FECHA_BAJA' => $fecha, "ESTADO" => 0), $request->id)) {
                    //SI EL PROCESO ES EXITOSO, DEVOLVERA UN VALOR DENTRO DEL ARRAY DE RESPUESTA IGUAL A 1
                    $response->proceso = 1;

                    if($query2 = $this->detalle_orden_trabajo_model->deleteReporte(" AND id_detalle_orden_trabajo=$request->id")){
                        $response->proceso = 1;
                    }
                }
            } else {
                $response->errores[] = "Ocurrió un problema al procesar la eliminacion";
            }

            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }


    public function deleteDetallesOrdenTrabajo()
    {
        if (true) {

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [PETICION]
            $request = new stdClass();
            $request->id = null;
            $fecha = date('Y-m-d H:i:s');

            //DECLARACION DE VARIABLES, OBJETOS Y ARRAYS DE [RESPUESTA]
            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            $where = '';

            //COMPROBAMOS SI VIENE UN ID MEDIANTE LA PETICION POST, Y SI ES QUE VIENE LO GUARDAMOS.
            if ($this->input->post('id_orden_trabajo')) {
                $request->id = $this->security->xss_clean($this->input->post('id_orden_trabajo'));
            } else { //SI NO, ALMACENAMOS EL ERROR EN UN ARRAY PARA DEVOLVERLO COMO RESPUESTA.
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }

            $where = " AND id_orden_trabajo=$request->id";


            //SI ES QUE NO HAY ERRORES, PROCEDEMOS A HACER LA PETICION MEDIANTE UN LLAMADO A LA FUNCION DEL MODELO.
            if (sizeof($response->errores) == 0) {
                if ($query = $this->detalle_orden_trabajo_model->deleteDetalles($where, $fecha)) {
                    //SI EL PROCESO ES EXITOSO, DEVOLVERA UN VALOR DENTRO DEL ARRAY DE RESPUESTA IGUAL A 1
                    $response->proceso = 1;
                }
            } else {
                $response->errores[] = "Ocurrió un problema al procesar la eliminacion";
            }

            echo json_encode($response);
        } else {
            redirect('auth/login', 'refresh');
        }
    }


    public function updateEstadoServicio()
    {

        $request = new stdClass();
        $request->id = null;
        $request->data = [];

        $fecha = date('Y-m-d H:i:s');

        $response = new stdClass();
        $response->id = null;
        $response->data = [];
        $response->proceso = 0;
        $response->errores = [];

        if ($this->input->post('id_detalle_orden_trabajo')) {
            $request->id = trim($this->security->xss_clean($this->input->post('id_detalle_orden_trabajo', true)));

            if ($this->input->post('estado_servicio')) {
                $request->estado_servicio = trim($this->security->xss_clean($this->input->post('estado_servicio', true)));
            } else {
                $response->errores[] = "Ocurrió un problema al obtener el estado de servicio";
            }
        } else {
            $response->errores[] = "Ocurrió un problema al obtener el id_detalle_orden_trabajo";
        }

        $datos = array(
            'id_detalle_orden_trabajo' => $request->id,
            'estado_servicio' => $request->estado_servicio,
            'fecha_modificacion' => $fecha,
            'estado' => 1
        );

        if (sizeof($response->errores) == 0) {
            if ($query = $this->detalle_orden_trabajo_model->updateDetalleOrdenTrabajo('detalle_orden_trabajo', 'ID_DETALLE_ORDEN_TRABAJO', $datos, $request->id)) {
                $response->proceso = 1;
                $response->id = $query;
                $response->data = $datos;
            }
        } else {
            $response->errores[] = "Ocurrió un problema al procesar la edicion";
        }
    }




    public function updateEstadoProducto()
    {
        if (true) {

            $request = new stdClass();
            $request->id = null;
            $request->data = [];

            $fecha = date('Y-m-d H:i:s');

            $response = new stdClass();
            $response->id = null;
            $response->data = [];
            $response->proceso = 0;
            $response->errores = [];

            if ($this->input->post('id_reporte_detalle')) {
                $request->id = trim($this->security->xss_clean($this->input->post('id_reporte_detalle', true)));
            } else {
                $response->errores[] = "Ocurrió un problema al obtener la solicitud";
            }


            if (sizeof($response->errores) == 0) {

                if ($tipo_proceso = $this->input->post('tipo_proceso')) {

                    switch ($tipo_proceso) {
                        case 1:

                            if (!empty($this->input->post('id_trabajador'))) {
                                $request->id_trabajador = $this->security->xss_clean($this->input->post('id_trabajador'));
                            }

                            if (!empty($this->input->post('cliente_envia'))) {
                                $request->estado = $this->security->xss_clean($this->input->post('cliente_envia'));
                            }

                            $datos = array(
                                'id_trabajador_1' => $request->id_trabajador,
                                'cliente_envia_1' => $request->estado,
                            );

                            $this->sendData($request->id, $datos);
                            break;
                        case 2:

                            if (!empty($this->input->post('id_trabajador'))) {
                                $request->id_trabajador = $this->security->xss_clean($this->input->post('id_trabajador'));
                            }

                            if (!empty($this->input->post('propuesta'))) {
                                $request->estado = $this->security->xss_clean($this->input->post('propuesta'));
                            }

                            $datos = array(
                                'id_trabajador_2' => $request->id_trabajador,
                                'propuesta_2' => $request->estado,
                            );
                            $this->sendData($request->id, $datos);

                            break;
                        case 3:

                            if (!empty($this->input->post('id_trabajador'))) {
                                $request->id_trabajador = $this->security->xss_clean($this->input->post('id_trabajador'));
                            }

                            if (!empty($this->input->post('cliente_aprueba'))) {
                                $request->estado = $this->security->xss_clean($this->input->post('cliente_aprueba'));
                            }

                            $datos = array(
                                'id_trabajador_3' => $request->id_trabajador,
                                'cliente_aprueba_3' => $request->estado,
                            );
                            $this->sendData($request->id, $datos);

                            break;
                        case 4:

                            if (!empty($this->input->post('id_trabajador'))) {
                                $request->id_trabajador = $this->security->xss_clean($this->input->post('id_trabajador'));
                            }

                            if (!empty($this->input->post('realiza'))) {
                                $request->estado = $this->security->xss_clean($this->input->post('realiza'));
                            }

                            $datos = array(
                                'id_trabajador_4' => $request->id_trabajador,
                                'realiza_4' => $request->estado,
                            );
                            $this->sendData($request->id, $datos);

                            break;
                        case 5:

                            if (!empty($this->input->post('id_trabajador'))) {
                                $request->id_trabajador = $this->security->xss_clean($this->input->post('id_trabajador'));
                            }

                            if (!empty($this->input->post('problema'))) {
                                $request->estado = $this->security->xss_clean($this->input->post('problema'));
                            }

                            $datos = array(
                                'id_trabajador_5' => $request->id_trabajador,
                                'problema_5' => $request->estado,
                            );
                            $this->sendData($request->id, $datos);

                            break;
                    }
                }
            }
        } else {
            redirect('auth/login', 'refresh');
        }
    }

    public function sendData($id, $datos)
    {
        $request = new stdClass();
        $request->id = null;
        $request->data = [];

        $fecha = date('Y-m-d H:i:s');

        $response = new stdClass();
        $response->id = null;
        $response->data = [];
        $response->proceso = 0;
        $response->errores = [];

        if (sizeof($response->errores) == 0) {
            if ($query = $this->detalle_orden_trabajo_model->updateDetalleOrdenTrabajo('reporte_detalle', 'ID_REPORTE_DETALLE', $datos, $id)) {
                $response->proceso = 1;
                $response->id = $query;
                $response->data = $datos;
            }
        } else {
            $response->errores[] = "Ocurrió un problema al procesar la edicion";
        }

        echo json_encode($response);
    }
}
