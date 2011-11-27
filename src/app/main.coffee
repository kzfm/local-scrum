window.app = {}
app.routers = {}
app.models = {}
app.collections = {}
app.views = {}

Notes = require('collections/notes_collection').Notes
Columns = require('collections/columns_collection').Columns

HomeView = require('views/home_view').HomeView
NotesView = require('views/notes_view').NotesView
NewNoteView = require('views/new_note_view').NewNoteView
ColumnsView = require('views/columns_view').ColumnsView
NewColumnView = require('views/new_column_view').NewColumnView

MainRouter = require('routers/main_router').MainRouter


# app bootstrapping on document ready
$(document).ready ->
    app.initialize = ->
        app.routers.main = new MainRouter()

        app.collections.notes = new Notes()
        app.collections.columns = new Columns()

        app.views.home = new HomeView()
        app.views.notes = new NotesView()
        app.views.new_note = new NewNoteView()
        app.views.columns = new ColumnsView()
        app.views.new_column = new NewColumnView()
        
        app.routers.main.navigate 'home', true if Backbone.history.getFragment() is ''
    app.initialize()
    Backbone.history.start()
