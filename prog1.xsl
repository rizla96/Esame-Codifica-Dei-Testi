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
              <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"></link>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
              <script src="main1.js" charset="utf-8"> </script>
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
                      <div id="demo" class="collapse" width='200%'>
                        <div class="container-fluid">
                          <h1>ciao</h1>
                        </div>
                      </div>
                </div>
                <div class="col-sm-4">
                  <h3>cartoliona 2</h3>
                  <img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt="Cinque Terre"></img>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo2" href='#prova'>descrizione</button>
                      <div id="demo2" class="collapse">
                        <img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt="Cinque Terre"  ></img>
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


            <div class="container-fluid">
              <button type="button" class="btn btn-outline-info" id='retro'>Turn</button>
              <button type="button" class="btn btn-outline-info" id='Ruota'>Ruota</button>
              <div class="container-fluid">
                <div class="row">
                  <div class="col">
                    <img src="cartoline/7694-019F1.jpg" class="img-thumbnail" alt=""  id='fotoCart1'></img>
                  </div>
                  <div class="col bg-success" id='cartolina1InfoFronte'>


                        <table class="table_fronte" >
                            <tr>
                                <td class="td_1">TITOLO DELLA CARTOLINA</td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">AUTORE</td>
                                <td class="td_2"><em><xsl:apply-templates select="/teiCorpus/TEI[1]//tei:persName[@ref[1]='#GG']"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">DESCRIZIONE</td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>
                        </table>


                        <br/>
                        <p>Sul fronte della cartolina troviamo riportate le scritte:</p>
                        <p style="text-align:center;">"<b><xsl:apply-templates select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div/tei:ab[@xml:id='ScritteF1']"/></b>"</p>
                    </div>
                    <div class="col" id='cartolina1InfoRetro' style="display:none;" >
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <em><xsl:apply-templates select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='opener']"/></em>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b>
                                <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='letter-body']/tei:ab">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <em><xsl:apply-templates select="."/></em>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:apply-templates select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='closer']"/><br/>
                            </xsl:element>
                        </xsl:element>
                        <!--div per address cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">p_retro</xsl:attribute>
                            <xsl:attribute name="id">p_destination</xsl:attribute>
                            <b>SEZIONE DEDICATA ALL'INDIRIZZO DEL DESTINATARIO</b>
                            <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='destination']/tei:p/tei:address/tei:addrLine">
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                    <em><xsl:apply-templates select="."/></em>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                        <!--div per francobolli cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro2</xsl:attribute>
                            <xsl:element name="div">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:attribute name="id">p_francobolli</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div/tei:p/tei:stamp/tei:mentioned">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select="//tei:ab[@xml:id='ScritteR1']/tei:s/@xml:id"/></xsl:attribute>
                                    <xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div[position()=1]/tei:ab[@xml:id='ScritteR1']"/><!-- -->

                                </xsl:element>
                            </xsl:element>
                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>
                </div>
              </div>
              <button type="button" class="btn btn-outline-info" id='retro2'>Turn</button>
              <button type="button" class="btn btn-outline-info" id='ruota2'>Ruota</button>
              <div class="container-fluid">
                <div class="row">
                  <div class="col">
                    <img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt=""  id='fotoCart2'></img>
                  </div>
                  <div class="col" id='cartolina2InfoFronte'>
                        <table class="table_fronte">
                            <tr>
                                <td class="td_1">TITOLO DELLA CARTOLINA</td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">AUTORE</td>
                                <td class="td_2"><em><xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:ab/tei:persName[@ref='#M']"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">DESCRIZIONE</td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>
                        </table>
                        <br/>
                        <p>Sul fronte della cartolina troviamo riportate le scritte:</p>
                        <p style="text-align:center;">"<b><xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div/tei:ab[@xml:id='ScritteF2']"/></b>"</p>
                    </div>
                    <div class="col" id='cartolina2InfoRetro' style="display:none;" >
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b><br/>
                                <em><xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:div[@type='opener']"/></em>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>

                                <xsl:for-each select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:div[@type='letter-body']/tei:ab">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <em><xsl:apply-templates select="."/></em>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:div[@type='closer']"/><br/>
                            </xsl:element>
                        </xsl:element>
                        <!--div per address cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">p_retro</xsl:attribute>
                            <xsl:attribute name="id">p_destination</xsl:attribute>
                            <xsl:for-each select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:div[@type='destination']/tei:p/tei:address/tei:addrLine">
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                    <em><xsl:apply-templates select="."/></em>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                        <!--div per francobolli cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro2</xsl:attribute>
                            <xsl:element name="div">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:attribute name="id">p_francobolli</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div/tei:p/tei:stamp/tei:mentioned">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select="//tei:ab[@xml:id='ScritteR2']/tei:s/@xml:id"/></xsl:attribute>
                                    <xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div[position()=2]/tei:ab[@xml:id='ScritteR2']"/>
                                </xsl:element>
                            </xsl:element>


                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>
                </div>
              </div>
            </div>
            <div class="container-fluid">
              <button type="button" class="btn btn-outline-info" id='retro3'>Turn</button>
              <button type="button" class="btn btn-outline-info" id='ruota3'>Ruota</button>
              <div class="container-fluid">
                <div class="row">
                  <div class="col">
                    <img src="cartoline/7694-083F.jpg" class="img-thumbnail" alt=""  id='fotoCart3'></img>
                  </div>
                  <div class="col" id='cartolina3InfoFronte'>
                        <table class="table_fronte">
                            <tr>
                                <td class="td_1">TITOLO DELLA CARTOLINA</td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">AUTORE</td>
                                <td class="td_2"><em><xsl:apply-templates select="/teiCorpus/TEI[3]//tei:persName[@ref='#SB']"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1">DESCRIZIONE</td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>
                        </table>
                        <br/>
                        <p>Sul fronte della cartolina troviamo riportate le scritte:</p>
                        <p style="text-align:center;">"<b><xsl:apply-templates select="/teiCorpus/TEI[3]/tei:text/tei:front/tei:div/tei:ab[@xml:id='ScritteF3']"/></b>"</p>
                  </div>
                  <div class="col" id='cartolina3InfoRetro' style="display:none;">
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b><br/>
                                <em><xsl:apply-templates select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='opener']"/></em>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='letter-body']/tei:ab">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <em><xsl:apply-templates select="."/></em>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:apply-templates select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='closer']"/><br/>
                            </xsl:element>
                        </xsl:element>
                        <!--div per address cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">p_retro</xsl:attribute>
                            <xsl:attribute name="id">p_destination</xsl:attribute>
                            <b>SEZIONE DEDICATA ALL'INDIRIZZO DEL DESTINATARIO</b>
                            <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='destination']/tei:p/tei:address/tei:addrLine">
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                    <em><xsl:apply-templates select="."/></em>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                        <!--div per francobolli cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro</xsl:attribute>
                            <xsl:element name="div">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:attribute name="id">p_francobolli</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:front/tei:div/tei:p/tei:stamp/tei:mentioned">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select="//tei:ab[@xml:id='ScritteR3']/tei:s/@xml:id"/></xsl:attribute>
                                    <xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:front/tei:div[position()=1]/tei:ab[@xml:id='ScritteR3']"/>

                                </xsl:element>
                            </xsl:element>


                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:front/tei:div/tei:p/tei:stamp/tei:mentioned/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>
                </div>
              </div>
            </div>
            <div id="edition">
                <h3>Informazioni sull'edizione</h3>
                <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt"/>
                <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"/>
            </div>

            <div id="publication">
                <h3>Informazioni sulla pubblicazione</h3>
                <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
            </div>

            <div id="crediti">
                <h3>Crediti</h3>
                <p>Progetto realizzato per il corso di Codifica dei Testi, anno 2018/19.</p>
            </div>
            </body>
        </html>

      </xsl:template>
      <xsl:template match="//tei:lb">
          <xsl:element name="span">
              <xsl:attribute name="class">line</xsl:attribute>
              <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
              ➤
          </xsl:element>

      </xsl:template>
      <xsl:template match="//tei:div[@xml:id='ScritteR3']/tei:ab[position()=2]/tei:s">
         <p class="ScritteR3"><xsl:value-of select="current()"/></p>
      </xsl:template>
      <xsl:template match="//tei:gap">
      --(<xsl:value-of select="."/>)--
      </xsl:template>
      <!--TEMPLATE PER RESPSTMT INIZIALE-->

      <xsl:template match="//tei:respStmt">
          <xsl:choose>
              <xsl:when test="count(tei:name)>1">
                  <xsl:value-of select="tei:resp"/>:
                  <xsl:value-of select="tei:name[1]"/>,
                  <xsl:value-of select="tei:name[2]"/><br/>
                  <xsl:text> </xsl:text>
              </xsl:when>
              <xsl:when test="tei:name[text()]">
                  <xsl:value-of select="tei:resp"/>:
                  <xsl:value-of select="tei:name"/><br/>

              </xsl:when>
          </xsl:choose>
      </xsl:template>

      <!--TEMPLATE PER PUBLICATIONSTMT -->

      <xsl:template match="//tei:publicationStmt">
          <p>Publisher: <xsl:value-of select="//current()/tei:publisher"/>, <xsl:value-of select="//current()/tei:pubPlace"/></p>
          <p>Copyright: <xsl:value-of select="//current()/tei:availability"/></p>
          <p>Distributor: <xsl:value-of select="//current()/tei:address/tei:addrLine[1]"/></p>
      </xsl:template>




  </xsl:stylesheet>
