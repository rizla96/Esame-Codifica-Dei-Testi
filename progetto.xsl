<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
              <title>
                  Cartoline 019 071 083
              </title>
              <link rel="stylesheet" type="text/css" href="style.css" media="screen" />
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></link>
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
              <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
              <script src="main.js" charset="utf-8"> </script>
            </head>
            <body>
              <div id='intro' class="jumbotron text-center">
                <h1>Rappresentazione di cartoline della Grande Guerra</h1>
                <div id="descr">
                  <h3>Le cartoline:</h3>
                    <p>Cartolina n°019: <xsl:value-of select="//TEI[@n='1']//tei:titleStmt/tei:title"/></p>
                    <p>Cartolina n°071: <xsl:value-of select="//TEI[@n='2']//tei:titleStmt/tei:title"/></p>
                    <p>Cartolina n°083: <xsl:value-of select="//TEI[@n='3']//tei:titleStmt/tei:title"/></p>
                    <p>Le tre cartoline sopra citate fanno parte di una collezione contenente 227 cartoline conservate al museo "Giovanni Podenzana" di La Spezia nella sezione dei cimeli garibaldini.
                      Le cartoline sono state scritte durante la Prima Guerra mondiale, infatti presentano le date 1916 e 1917.</p>
                </div>
              </div>
              <div class="container">
              <div class="row">
                <div class="col-sm-4">
                  <h3>Cartolina 019</h3>
                  <a href='#primaCartolina'><img src="cartoline/7694-019F.jpg" class="img-thumbnail" alt="Cartolina 019" id="cart19"></img></a>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">descrizione</button>
                      <div id="demo" class="collapse">
                        <div class="container-fluid">
                          <xsl:element name="div">
                              <xsl:attribute name="class">divinfo</xsl:attribute>
                              <xsl:attribute name="id">info</xsl:attribute>

                              <div id="div_msdesc019">
                                      <xsl:apply-templates select="//TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                              </div>

                              <div id="div_persone019">
                                  <h4>PERSONE</h4>
                                      <xsl:apply-templates select="//TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person"/>

                              </div>

                              <div id="div_luoghi019">
                                  <h4>LUOGHI</h4>
                                      <xsl:apply-templates select="//TEI[@n='1']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace"/>
                                      <xsl:apply-templates select="//TEI[@n='1']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>

                              </div>
                          </xsl:element>
                        </div>
                      </div>
                </div>
                <div class="col-sm-4">
                  <h3>Cartoliona 071</h3>
                  <a href='#secondaCartolina'><img src="cartoline/7694-071F.jpg" class="img-thumbnail" alt="Cartolina 071" id='cart071'></img></a>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo2">descrizione</button>
                      <div id="demo2" class="collapse">
                        <xsl:element name="div">
                            <xsl:attribute name="class">divinfo</xsl:attribute>
                            <xsl:attribute name="id">info2</xsl:attribute>

                            <div id="div_msdesc071">
                                    <xsl:apply-templates select="//TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                            </div>

                            <div id="div_luoghi071">
                                <h4>LUOGHI</h4>

                                    <xsl:apply-templates select="//TEI[@n='2']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace"/>
                                    <xsl:apply-templates select="//TEI[@n='2']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>

                            </div>
                        </xsl:element>
                      </div>
                </div>
                <div class="col-sm-4">
                  <h3>Cartolina 083</h3>
                  <a href='#terzaCartolina'><img src="cartoline/7694-083F.jpg" class="img-thumbnail" alt="Cartolina 083" id='cart083'></img></a>
                  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo3">descrizione</button>
                      <div id="demo3" class="collapse">
                        <xsl:element name="div">
                            <xsl:attribute name="class">divinfo</xsl:attribute>
                            <xsl:attribute name="id">info3</xsl:attribute>

                            <div id="div_msdesc083">
                                    <xsl:apply-templates select="//TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc"/>
                            </div>

                            <div id="div_persone083">
                                <h4>PERSONE</h4>
                                    <xsl:apply-templates select="//TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person"/>

                            </div>

                            <div id="div_luoghi083">
                                <h4>LUOGHI</h4>
                                    <xsl:apply-templates select="//TEI[@n='3']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listPlace"/>
                                    <xsl:apply-templates select="//TEI[@n='3']/tei:teiHeader/tei:profileDesc/tei:correspDesc"/>
                            </div>
                        </xsl:element>

                      </div>
                </div>
              </div>
            </div>


            <div class="container-fluid" id='firstcontainer'>

              <div class="container-fluid" id='primaCartolina'>
                <div class='but'>
                <button type="button" class="btn btn-outline-secondary" id='retro'>Retro</button>
                <button type="button" class="btn btn-outline-secondary" id='fronte'>Fronte</button>
              </div>
                <div class="row">
                  <div class="col" id='fronte1'>
                    <xsl:element name="img">
                         <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='1']//tei:facsimile/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart1</xsl:attribute>
                        <xsl:attribute name="class">img-thumbnail</xsl:attribute>


                    </xsl:element>
                  </div>
                  <div class="col" id='retro1'>
                    <xsl:element name="img">
                        <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='1']//tei:surface/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart1R</xsl:attribute>
                        <xsl:attribute name="class"></xsl:attribute>


                        </xsl:element>

                        <xsl:element name="svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                              <xsl:attribute name="height">525</xsl:attribute>
                              <xsl:attribute name="width">825</xsl:attribute>
                              <xsl:attribute name="class">re</xsl:attribute>
                              <xsl:attribute name="height">525</xsl:attribute>
                              <xsl:attribute name="width">825</xsl:attribute>
                            <xsl:for-each select="//TEI[@n='1']//tei:surface/tei:zone">
                            <xsl:element name="polygon">
                                <xsl:attribute name="class">CursorePointer</xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                                <xsl:attribute name="points"><xsl:value-of select="@points"/></xsl:attribute>
                                <xsl:attribute name="onmouseover">test(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                                <xsl:attribute name="onmouseout">testout(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                            </xsl:element>
                          </xsl:for-each>
                        </xsl:element>
                  </div>
                  <div class="col" id='cartolina1InfoFronte'>


                        <table class="table_fronte" >
                            <tr>
                                <td class="td_1"><b>TITOLO: </b></td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>AUTORE: </b></td>
                                <td class="td_2"><em><xsl:apply-templates select="/teiCorpus/TEI[1]//tei:persName[@ref[1]='#GG']"/></em></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>CODICE ID: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[1]//tei:msIdentifier/tei:idno"/></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>EDITORE: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[1]//tei:sourceDesc/tei:bibl/tei:publisher"/></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>TIPOLOGIA: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[1]//tei:msDesc/tei:msContents/tei:summary"/></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>DESCRIZIONE: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>SCRITTE: </b></td>
                                <td class="td_2"><xsl:apply-templates select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div/tei:ab[@xml:id='ScritteF1']"/></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col" id='cartolina1InfoRetro' style="display:none;" >
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="div">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b>
                                <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='letter-body']/tei:ab">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <em><xsl:apply-templates select="."/></em>
                                    </xsl:element>
                                </xsl:for-each>

                            </xsl:element>
                            <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:body/tei:div/tei:div[@type='closer']">
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                    <em><xsl:apply-templates select="."/></em>
                                </xsl:element>
                            </xsl:for-each>


                        </xsl:element>
                        <!--div per address cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">p_retro</xsl:attribute>
                            <xsl:attribute name="id">p_destination019</xsl:attribute>
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
                                <xsl:attribute name="id">p_francobolli019</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[1]/tei:text/tei:front/tei:div/tei:p/tei:stamp/tei:mentioned">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:attribute name="id">catc1</xsl:attribute>
                              <xsl:value-of select="/teiCorpus/TEI[1]//handDesc/tei:handNote/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>
                </div>
              </div>

              <div class="container-fluid" id='secondaCartolina'>
                <div class='but'>
                <button type="button" class="btn btn-outline-secondary" id='retro2'>Retro</button>
                <button type="button" class="btn btn-outline-secondary" id='fronte2'>Fronte</button>
              </div>
                <div class="row">
                  <div class="col" id='frontec2'>
                    <xsl:element name="img">
                         <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='2']//tei:facsimile/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart2</xsl:attribute>
                        <xsl:attribute name="class">img-thumbnail</xsl:attribute>

                    </xsl:element>
                  </div>
                  <div class="col" id='retroc2'>
                    <xsl:element name="img">
                         <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='2']//tei:surface/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart2R</xsl:attribute>
                        <xsl:attribute name="class"></xsl:attribute>

                    </xsl:element>
                    <xsl:element name="svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">

                          <xsl:attribute name="class">re</xsl:attribute>
                          <xsl:attribute name="height">525</xsl:attribute>
                          <xsl:attribute name="width">825</xsl:attribute>
                        <xsl:for-each select="//TEI[@n='2']//tei:surface/tei:zone">
                        <xsl:element name="polygon">
                            <xsl:attribute name="class">CursorePointer</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                            <xsl:attribute name="points"><xsl:value-of select="@points"/></xsl:attribute>
                            <xsl:attribute name="onmouseover">test(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                            <xsl:attribute name="onmouseout">testout(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                        </xsl:element>
                      </xsl:for-each>
                    </xsl:element>
                  </div>
                  <div class="col" id='cartolina2InfoFronte'>
                        <table class="table_fronte">
                            <tr>
                                <td class="td_1"><b>TITOLO: </b></td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>CODICE ID: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[2]//tei:msIdentifier/tei:idno"/></td>
                            </tr>

                            <tr>
                                <td class="td_1"><b>TIPOLOGIA: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[2]//tei:msDesc/tei:msContents/tei:summary"/></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>DESCRIZIONE: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>SCRITTE: </b></td>
                                <td class="td_2"><xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div/tei:ab[@xml:id='ScritteF2']"/></td>
                            </tr>
                        </table>
                        <br/>

                    </div>
                    <div class="col" id='cartolina2InfoRetro' style="display:none;" >
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b><br/>

                                <em id='op1c2'><xsl:apply-templates select="/teiCorpus/TEI[2]/tei:text/tei:body/tei:div/tei:div[@type='opener']"/></em>

                            </xsl:element>
                            <xsl:element name="div">
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
                            <xsl:attribute name="id">p_destination071</xsl:attribute>
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
                                <xsl:attribute name="id">p_francobolli071</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[2]/tei:text/tei:front/tei:div[position()=1]/tei:ab[@xml:id='ScritteR2']/tei:s">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>

                            </xsl:element>


                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:attribute name="id">catc2</xsl:attribute>
                              <xsl:value-of select="/teiCorpus/TEI[2]//handDesc/tei:handNote/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>
                </div>
              </div>

              <div class="container-fluid" id='terzaCartolina'>
                <div class='but'>
                <button type="button" class="btn btn-outline-secondary" id='retro3'>Retro</button>
                <button type="button" class="btn btn-outline-secondary" id='fronte3'>Fronte</button>
              </div>
                <div class="row">
                  <div class="col" id='frontec3'>
                    <xsl:element name="img">
                         <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='3']//tei:facsimile/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart3</xsl:attribute>
                        <xsl:attribute name="class">img-thumbnail</xsl:attribute>

                    </xsl:element>
                  </div>
                  <div class="col" id='retroc3'>
                    <xsl:element name="img">
                         <xsl:attribute name="src"><xsl:value-of select="//TEI[@n='3']//tei:surface/tei:graphic/@url"/></xsl:attribute>
                        <xsl:attribute name="id">fotoCart3R</xsl:attribute>
                        <xsl:attribute name="class"></xsl:attribute>
                    </xsl:element>
                    <xsl:element name="svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">

                          <xsl:attribute name="class">re</xsl:attribute>
                          <xsl:attribute name="height">525</xsl:attribute>
                          <xsl:attribute name="width">825</xsl:attribute>
                        <xsl:for-each select="//TEI[@n='3']//tei:surface/tei:zone">
                        <xsl:element name="polygon">
                            <xsl:attribute name="class">CursorePointer</xsl:attribute>
                            <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                            <xsl:attribute name="points"><xsl:value-of select="@points"/></xsl:attribute>
                            <xsl:attribute name="onmouseover">test(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                            <xsl:attribute name="onmouseout">testout(<xsl:value-of select="//current()/@xml:id"/>)</xsl:attribute>
                        </xsl:element>
                      </xsl:for-each>
                    </xsl:element>
                  </div>
                  <div class="col" id='cartolina3InfoFronte'>
                        <table class="table_fronte">
                            <tr>
                                <td class="td_1"><b>TITOLO: </b></td>
                                <td class="td_2"><em><xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:figure/tei:head"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>AUTORE: </b></td>
                                <td class="td_2"><em><xsl:apply-templates select="/teiCorpus/TEI[3]//tei:persName[@ref='#SB']"/></em></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>CODICE ID: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[3]//tei:msIdentifier/tei:idno"/></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>EDITORE: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[3]//tei:sourceDesc/tei:bibl/tei:publisher"/></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>TIPOLOGIA: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[3]//tei:msDesc/tei:msContents/tei:summary"/></td>
                            </tr>
                            <tr>
                                <td class="td_1"><b>DESCRIZIONE: </b></td>
                                <td class="td_2"><xsl:value-of select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:figure/tei:figDesc"/></td>
                            </tr>

                        </table>
                        <br/>

                  </div>
                  <div class="col" id='cartolina3InfoRetro' style="display:none;">
                        <xsl:element name="div">
                            <xsl:attribute name="class">text_retro1</xsl:attribute>
                            <xsl:element name="p">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <b>CORPO DELLA CARTOLINA</b><br/>
                                <em id='op1c3'><xsl:apply-templates select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='opener']"/></em>
                            </xsl:element>
                            <xsl:element name="div">
                                <xsl:attribute name="class">p_retro</xsl:attribute>
                                <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='letter-body']/tei:ab">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <em><xsl:apply-templates select="."/></em>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>
                            <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:body/tei:div/tei:div[@type='closer']">
                                <xsl:element name="p">
                                    <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                    <em><xsl:apply-templates select="."/></em>
                                </xsl:element>
                            </xsl:for-each>
                        </xsl:element>
                        <!--div per address cartolina-->
                        <xsl:element name="div">
                            <xsl:attribute name="class">p_retro</xsl:attribute>
                            <xsl:attribute name="id">p_destination083</xsl:attribute>
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
                                <xsl:attribute name="id">p_francobolli083</xsl:attribute>
                                <b>FRANCOBOLLI, TIMBRI E STAMPE</b><br/>
                                <xsl:for-each select="/teiCorpus/TEI[3]/tei:text/tei:front/tei:div[1]/tei:p/tei:stamp/tei:mentioned">
                                    <xsl:element name="p">
                                        <xsl:attribute name="id"><xsl:value-of select='@xml:id'/></xsl:attribute>
                                        <xsl:apply-templates select="."/>
                                    </xsl:element>
                                </xsl:for-each>
                            </xsl:element>


                        </xsl:element>
                        <!--catalogazione-->
                        <xsl:element name="div">
                          <b>CATALOGAZIONE</b>
                          <xsl:element name="p">
                              <xsl:attribute name="id">catc3</xsl:attribute>
                              <xsl:value-of select="/teiCorpus/TEI[3]//handDesc/tei:handNote/tei:num"/>
                          </xsl:element>
                        </xsl:element>
                  </div>

              </div>
            </div>
          </div>
          <div class='container-fluid'>
            <div class="row" id='footer'>
            <div id="edition" class="col">
                <h3>Responsabili dell'edizione:</h3>
                <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"/>
            </div>

            <div id="publication" class="col">
                <h3>Informazioni sulla pubblicazione:</h3>
              <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
            </div>

            <div id="crediti" class="col">
                <h3>Crediti:</h3>
                <xsl:apply-templates select="/teiCorpus/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt"/>
            </div>
            </div>
          </div>
            </body>
        </html>

      </xsl:template>
      <xsl:template match="//tei:lb">
          <xsl:element name="span">
              <xsl:attribute name="class">lineB</xsl:attribute>
              <i class="material-icons" style="font-size:16px">&#xe061;</i>
          </xsl:element>

      </xsl:template>

      <xsl:template match="//tei:gap">
      (<xsl:value-of select="."/>)
      </xsl:template>
      <!--TEMPLATE PER RESPSTMT-->

      <xsl:template match="//tei:editionStmt/tei:respStmt">
          <xsl:choose>
              <xsl:when test="count(tei:name)>1">
                  <i class="material-icons">&#xe30c;</i>
                  <b><xsl:value-of select="tei:resp"/>:</b>
                  <xsl:value-of select="tei:name[1]"/>,
                  <xsl:value-of select="tei:name[2]"/><br/>
                  <xsl:text> </xsl:text>
              </xsl:when>
              <xsl:when test="tei:name[text()]">
                  <i class="material-icons">&#xe30c;</i>
                  <b><xsl:value-of select="tei:resp"/>:</b>
                  <xsl:value-of select="tei:name"/><br/>

              </xsl:when>
          </xsl:choose>
      </xsl:template>

      <!--TEMPLATE PER PUBLICATIONSTMT -->

      <xsl:template match="//tei:publicationStmt">
          <i class="material-icons">&#xe80c;</i>
          <b>Publisher: </b><xsl:value-of select="//current()/tei:publisher"/><br/>
          <i class="material-icons">&#xe80c;</i>
          <b>Distributor: </b><xsl:value-of select="//current()/tei:distributor"/><br/>
      </xsl:template>

      <!--TEMPLATE PER CREDITI -->

      <xsl:template match="//tei:titleStmt/tei:respStmt">
        <xsl:for-each select="name">
          <xsl:if test="//current()[@xml:id='MG' or @xml:id='PG']">
          <i class="material-icons">&#xe7ff;</i>
          <xsl:value-of select="."/><br/></xsl:if>
        </xsl:for-each>
      </xsl:template>
      <!--TEMPLATE PER MSDESC-->

      <xsl:template match="//tei:msIdentifier">
          <p><b>Collocazione: </b>
              <xsl:value-of select="current()/tei:country"/>, <xsl:value-of select="current()/tei:settlement"/>.</p>
          <p><b>Identificativo: </b><xsl:value-of select="current()/tei:idno"/></p>
      </xsl:template>

      <xsl:template match="//tei:msContents">
          <p><b>Contenuto: </b>
              <xsl:value-of select="current()/tei:summary"/>.</p>
      </xsl:template>

      <xsl:template match="//tei:physDesc">
          <p><b>Caratteristiche: </b>
              <xsl:value-of select="current()/tei:objectDesc/tei:supportDesc/tei:support/tei:objectType"/> di <xsl:value-of select="current()/tei:objectDesc/tei:supportDesc/tei:support/tei:material"/>,
              con dimensioni in <xsl:value-of select="current()/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:height"/>
              x <xsl:value-of select="current()/tei:objectDesc/tei:supportDesc/tei:support/tei:dimensions/tei:width"/> cm.</p>
          <p><b>Francobolli/timbri/stampe: </b>
              <xsl:value-of select="current()/tei:objectDesc/tei:supportDesc/tei:support/tei:stamp"/></p>
      </xsl:template>

      <!--TEMPLATE PER PERSONE-->

      <xsl:template match="//tei:person">
          <b><xsl:apply-templates select="//current()/tei:persName"/></b>: <xsl:value-of select="current()/tei:note"/>.<br/>
      </xsl:template>
      <xsl:template match="//tei:surname[node()='Grossi']">
          <a href="http://www.lucasforziniarte.it/archivio-artisti/lombardia/grossi-giannino-milano-1889-milano-1969-pittore"><xsl:value-of select="current()"/></a>
      </xsl:template>
      <xsl:template match="//tei:surname[node()='Bersani']">
          <a href="http://www.icontemporanei.it/indice/omaggi/bersani/stefano_bersani_pittore_e_poeta.htm"><xsl:value-of select="current()"/></a>
      </xsl:template>


      <!--TEMPLATE PER LUOGHI-->


      <xsl:template match="//tei:location">
          <xsl:if test="//current()/tei:district">
              (<xsl:value-of select="//current()/tei:district[@type='provincia']"/>), <xsl:value-of select="//current()/tei:region"/></xsl:if>,
          <xsl:value-of select="//current()/tei:country"/> <br/>
      </xsl:template>
      <xsl:template match="//tei:correspAction[@type='sent']">
          <b>La cartolina è stata inviata da: </b> <em><xsl:value-of select="//current()/tei:placeName"/></em>, il <xsl:value-of select="//current()/tei:date"/> <br/>
      </xsl:template>
      <xsl:template match="//tei:correspAction[@type='received']">
          <xsl:if test="//current()/tei:placeName">
         <b>Ed è arrivata a: </b><em><xsl:value-of select="//current()/tei:placeName"/></em>
      </xsl:if>
      </xsl:template>
  </xsl:stylesheet>
