module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("movies", {
        user_id: {
            type: Sequelize.STRING
        },
        movie_name: {
            type: Sequelize.STRING
        },
        rating: {
            type: Sequelize.INTEGER
        },
        cast: {
            type: Sequelize.JSON
        },
        genre: {
            type: Sequelize.STRING
        },
        release: {
            type: Sequelize.DATE
        }
    });

    return User;
};