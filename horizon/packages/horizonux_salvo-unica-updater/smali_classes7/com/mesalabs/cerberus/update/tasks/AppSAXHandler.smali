.class public Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AppSAXHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

.field private tempVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 28
    const-string v0, "AppSAXHandler"

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->apps:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 57
    const-string v0, "app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->apps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 60
    :cond_0
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AppSAXHandler"

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/update/data/AppData;->setTitle(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_1
    const-string v0, "package-name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/update/data/AppData;->setPackageName(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "version"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/update/data/AppData;->setVersionNumber(I)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v0, "download-link"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mesalabs/cerberus/update/data/AppData;->setDownloadLink(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Link = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_4
    :goto_0
    return-void
.end method

.method public getApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mesalabs/cerberus/update/data/AppData;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempVal:Ljava/lang/String;

    .line 46
    const-string v0, "app"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/mesalabs/cerberus/update/data/AppData;

    invoke-direct {v0}, Lcom/mesalabs/cerberus/update/data/AppData;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/cerberus/update/tasks/AppSAXHandler;->tempAddon:Lcom/mesalabs/cerberus/update/data/AppData;

    .line 50
    :cond_0
    return-void
.end method
