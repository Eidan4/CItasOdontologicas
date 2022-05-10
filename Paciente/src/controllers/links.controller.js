import pool from "../database";

export const renderAddLink = (req, res) => {
  res.render("links/add");
};

export const addLink = async (req, res) => {
  const { idOdontologo, idTratamiento, idTratamiento2,ci_fechacita,ci_horainicio, ci_horafinal, ci_motivoconsulta} = req.body;
  const newLink = {
    idOdontologo,
    idTratamiento,
    idTratamiento2,
    ci_fechacita,
    ci_horainicio,
    ci_horafinal,
    ci_motivoconsulta,
    idPacientes: req.user.id,
  };
  await pool.query("INSERT INTO cita set ?", [newLink]);
  req.flash("success", "Cita Saved Successfully");
  res.redirect("/links");
};

export const renderLinks = async (req, res) => {
  const [rows] = await pool.query("SELECT * FROM cita WHERE idPacientes = ?", [
    req.user.id,
  ]);
  res.render("links/list", { links: rows });
}; 

export const deleteLink = async (req, res) => {
  const { id } = req.params;
  await pool.query("DELETE FROM cita WHERE ID = ?", [id]);
  req.flash("success", "Link Removed Successfully");
  res.redirect("/links");
};

export const renderEditLink = async (req, res) => {
  const { id } = req.params;
  const [rows] = await pool.query("SELECT * FROM cita WHERE id = ?", [id]);
  res.render("links/edit", { link: rows[0] });
};

export const editLink = async (req, res) => {
  const { id } = req.params;
  const { idOdontologo, idTratamiento, idTratamiento2,ci_fechacita,ci_horainicio, ci_horafinal, ci_motivoconsulta } = req.body;
  const newLink = {
    idOdontologo,
    idTratamiento,
    idTratamiento2,
    ci_fechacita,
    ci_horainicio,
    ci_horafinal,
    ci_motivoconsulta,
  };
  await pool.query("UPDATE cita set ? WHERE id = ?", [newLink, id]);
  req.flash("success", "Link Updated Successfully");
  res.redirect("/links");
};
