const db = require("../models");
const Movie = db.movie;

exports.create = (req, res) => {
    // Save movie to Database
    Movie.create({
        user_id: req.body.user_id,
        movie_name: req.body.movie_name,
        rating: req.body.rating,
        cast: JSON.stringify(req.body.cast).substr(1).slice(0, -1),
        genre: req.body.genre,
        release: req.body.release
    })
        .then(movie => {
            res.send({ message: "Movie was created successfully!" });
        })
        .catch(err => {
            res.status(500).send({ message: err.message });
        });
};

exports.findOne = (req, res) => {
    const id = req.params.id;

    Movie.findByPk(id)
        .then(data => {
            if (data) {
                res.send(data);
            } else {
                res.status(404).send({
                    message: `Cannot find Movie with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Error retrieving Movie with id=" + id
            });
        });
};

exports.update = (req, res) => {
    const id = req.params.id;

    Movie.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Movie was updated successfully."
                });
            } else {
                res.send({
                    message: `Cannot update Movie with id=${id}. Maybe Movie was not found or req.body is empty!`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Error updating Movie with id=" + id
            });
        });
};

exports.delete = (req, res) => {
    const id = req.params.id;

    Movie.destroy({
        where: { id: id }
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: "Movie was deleted successfully!"
                });
            } else {
                res.send({
                    message: `Cannot delete Movie with id=${id}. Maybe Movie was not found!`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message: "Could not delete Movie with id=" + id
            });
        });
};