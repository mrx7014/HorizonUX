.class public Lcom/mesalabs/cerberus/update/tasks/AppXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AppXMLParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppXMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "xmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "addons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mesalabs/cerberus/update/data/AppData;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 35
    .local v1, "xmlReader":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 36
    .local v2, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;

    invoke-direct {v3}, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;-><init>()V

    .line 37
    .local v3, "saxHandler":Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;
    invoke-virtual {v2, p0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 38
    invoke-virtual {v3}, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->getApps()Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 41
    .end local v1    # "xmlReader":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "saxHandler":Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "AppXMLParser"

    const-string v3, "SAXXMLParser: parse() failed"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
