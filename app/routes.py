from flask import render_template, request
from app import app
from app.utilities.personajes import (
    listar_categorias,
    listar_personajes,
    obtener_personaje
)


@app.route('/')
def index():
    categorias = listar_categorias()
    personajes = listar_personajes()
    # [:6] toma los primeros seis objetos como vista previa del catalogo
    return render_template('index.html', categorias=categorias, personajes=personajes[:6], titulo="Inicio")


@app.route('/personajes')
def personajes():
    busqueda = request.args.get('q')
    categoria = request.args.get('categoria')
    lista = listar_personajes()

    if busqueda:
        lista = [p for p in lista if busqueda.lower() in p.nombre.lower()]
    if categoria:
        lista = [p for p in lista if str(p.id_categoria).lower() == categoria.lower()]

    return render_template('personajes.html', titulo="Personajes", personajes=lista)


@app.route('/personaje/<int:id_personaje>')
def personaje(id_personaje):
    caballero = obtener_personaje(id_personaje)
    if not caballero:
        return render_template('404.html', titulo='Pagina no encontrada'), 404
    return render_template('detalle.html', titulo=caballero.nombre, personaje=caballero)


@app.route('/categorias')
def categorias():
    lista_categorias = listar_categorias()
    return render_template('categorias.html', titulo="Categorías", categorias=lista_categorias)


@app.route('/creditos')
def creditos():
    return render_template('creditos.html', titulo="Creditos")

@app.errorhandler(404)
def pagina_no_encontrada(error):
    return render_template ('404.html'),404

