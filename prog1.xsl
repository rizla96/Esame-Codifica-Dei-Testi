<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>
                  <xsl:value-of select="//tei:title"/>
              </title>
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"></link>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
            </head>
            <body>
              <div id='intro' class="jumbotron text-center">
                <h1>PRIMA PAGINA</h1>
                <div id="descr">
                  <p>Nel seguente sito sono state digitalmente rappresentate, dopo essere state codificate, tre cartoline del Museo Civico Etnografico "Giovanni Podenzana", sezione dei cimeli garibaldini di La Spezia.
                      Sono state catalogate tramite un numero riportato sopra le cartoline:</p>
                      <p>- Cartolina n°019: Inviata da Milano dal signor Mario a Ravenna per la signorina Oliva Turtura.</p>
                      <p>- Cartolina n°071: Inviata da Gorizia, non abbiamo alcuna infomrazione del mittente o del destinatario, possiamo però presumere che è stata mandata da Giovanni Coliola ad Olivia Turtura, sua fidanzata .</p>
                      <p>- Cartolina n°083: Inviata da Modena da parte di Giovanni Coliola alla signorina Antonella Turtura, parente di Olivia Turtura</p>
                    <p>Le tre cartoline sopra citate fanno parte di una collezione contenente 227 cartoline, dove la maggior parte sono scambiate tra Olivia Turtura e il suo fidanzato Giovanni Coliola.
                      Le cartoline sono state scritte durante la Prima Guerra mondiale, infatti presentano le date 1916 e 1917.</p>
                </div>
              </div>
              <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <h3>cartolina 1</h3>
                  <img src="cartoline/7694-019F1.jpg" class="img-thumbnail" alt="Cinque Terre"></img>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">descrizione</button>
                      <div id="demo" class="collapse">
                        questa è la prima cartolina
                        ffffffffffffffffffff

                        fffffffffffffffffffff

                        fffffffffffffff
                      </div>
                </div>
                <div class="col-sm-4">
                  <h3>cartoliona 2</h3>
                  <img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt="Cinque Terre"></img>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo2" href='#prova'>descrizione</button>
                      <div id="demo2" class="collapse">
                        <img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt="Cinque Terre" id='prova'></img>
                        questa è la seconda cartolina
                      </div>
                </div>
                <div class="col-sm-4">
                  <h3>Cartolina 3</h3>
                  <img src="cartoline/7694-083F.jpg" class="img-thumbnail" alt="Cinque Terre"></img>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo3">descrizione</button>
                      <div id="demo3" class="collapse">
                        questa è la terza cartolina
                      </div>
                </div>
              </div>
            </div>
            </body>
        </html>
      </xsl:template>
      </xsl:stylesheet>
