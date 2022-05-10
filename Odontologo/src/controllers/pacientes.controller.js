import pool from "../database";

export const renderAddLink = (req, res) => {
  res.render("pacientes/add");
};

export const addLink = async (req, res) => {
  const { hi_antecedentespersonales,hi_antecedentesfamiliares,hi_odontologosanteriores,hi_tratamientoanterior,hi_alergias,idPacientes } = req.body;
  const newLink = {
    hi_antecedentespersonales,
    hi_antecedentesfamiliares,
    hi_odontologosanteriores,
    hi_tratamientoanterior,
    hi_alergias,
    idPacientes,
  };
  await pool.query("INSERT INTO HistorialMedico set ?", [newLink]);
  req.flash("success", "Guardo correctamente Historial Medico");
  res.redirect("/pacientes");
};

export const renderLinks = async (req, res) => {
    const [rows] = await pool.query("SELECT * FROM HistorialMedico");
    res.render("pacientes/list", { pacientes: rows });
  }; 

export const deleteLink = async (req, res) => {
  const { id } = req.params;
  await pool.query("DELETE FROM HistorialMedico WHERE ID = ?", [id]);
  req.flash("success", "Link Removed Successfully");
  res.redirect("/pacientes");
};

export const renderEditLink = async (req, res) => {
  const { id } = req.params;
  const [rows] = await pool.query("SELECT * FROM HistorialMedico WHERE id = ?", [id]);
  res.render("pacientes/edit", { pacientes: rows[0] });
};

export const editLink = async (req, res) => {
  const { id } = req.params;
  const { hi_antecedentespersonales,hi_antecedentesfamiliares,hi_odontologosanteriores,hi_tratamientoanterior,hi_alergias,idPacientes } = req.body;
  const newLink = {
    hi_antecedentespersonales,
    hi_antecedentesfamiliares,
    hi_odontologosanteriores,
    hi_tratamientoanterior,
    hi_alergias,
  };
  await pool.query("UPDATE HistorialMedico set ? WHERE id = ?", [newLink, id]);
  req.flash("success", "Link Updated Successfully");
  res.redirect("/pacientes");
};
