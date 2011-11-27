class exports.MainRouter extends Backbone.Router
    routes :
        "home": "home"

    home: ->
        app.views.home.render()
        app.collections.notes.fetch()
        app.collections.columns.fetch()
