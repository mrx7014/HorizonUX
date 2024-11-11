.class public Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ROMXMLParser.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field tagAndroid:Z

.field tagBuildNumber:Z

.field tagDownloadUrl:Z

.field tagFileSize:Z

.field tagLogHeader:Z

.field tagLogUrl:Z

.field tagMD5:Z

.field tagOneUI:Z

.field tagRomName:Z

.field tagVersionName:Z

.field tagWebsite:Z

.field private value:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 30
    const-string v0, "ROMXMLParser"

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->value:Ljava/lang/StringBuffer;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagRomName:Z

    .line 35
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagVersionName:Z

    .line 36
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagBuildNumber:Z

    .line 37
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagDownloadUrl:Z

    .line 38
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagMD5:Z

    .line 39
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogHeader:Z

    .line 40
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogUrl:Z

    .line 41
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagAndroid:Z

    .line 42
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagOneUI:Z

    .line 43
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagWebsite:Z

    .line 44
    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagFileSize:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->value:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "input":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagRomName:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 127
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setRomName(Ljava/lang/String;)V

    .line 128
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagRomName:Z

    .line 131
    :cond_0
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagVersionName:Z

    const-string v3, "ROMXMLParser"

    if-eqz v1, :cond_1

    .line 132
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setVersionName(Ljava/lang/String;)V

    .line 133
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagVersionName:Z

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagBuildNumber:Z

    if-eqz v1, :cond_2

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setBuildNumber(I)V

    .line 139
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagBuildNumber:Z

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build Number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagDownloadUrl:Z

    if-eqz v1, :cond_3

    .line 144
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setDownloadUrl(Ljava/lang/String;)V

    .line 145
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagDownloadUrl:Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download URL = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_3
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagAndroid:Z

    if-eqz v1, :cond_4

    .line 150
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setAndroidVersion(Ljava/lang/String;)V

    .line 151
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagAndroid:Z

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android Version = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_4
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagOneUI:Z

    if-eqz v1, :cond_5

    .line 156
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setOneUIVersion(Ljava/lang/String;)V

    .line 157
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagOneUI:Z

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "One UI Version = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_5
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagMD5:Z

    if-eqz v1, :cond_6

    .line 162
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setMd5(Ljava/lang/String;)V

    .line 163
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagMD5:Z

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MD5 = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_6
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagFileSize:Z

    if-eqz v1, :cond_7

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setFileSize(J)V

    .line 169
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagFileSize:Z

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filesize = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_7
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagWebsite:Z

    if-eqz v1, :cond_9

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 175
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setWebsite(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_8
    const-string v1, "null"

    invoke-static {v1}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setWebsite(Ljava/lang/String;)V

    .line 179
    :goto_0
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagWebsite:Z

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Website = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_9
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogHeader:Z

    if-eqz v1, :cond_a

    .line 184
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setChangelogHeaderImgUrl(Ljava/lang/String;)V

    .line 185
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogHeader:Z

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changelog Header URL = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_a
    iget-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogUrl:Z

    if-eqz v1, :cond_b

    .line 190
    invoke-static {v0}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->setChangelogUrl(Ljava/lang/String;)V

    .line 191
    iput-boolean v2, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogUrl:Z

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changelog URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_b
    return-void
.end method

.method public parse(Ljava/io/File;)V
    .locals 3
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const-string v0, "ROMXMLParser"

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 49
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 50
    .local v2, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 52
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/GeneralUtils;->setUpdateAvailability()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParser":Ljavax/xml/parsers/SAXParser;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "ex":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    .end local v1    # "ex":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 54
    .local v1, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v1    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    nop

    .line 58
    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->value:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    :cond_1
    const-string v0, "romname"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 73
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagRomName:Z

    .line 76
    :cond_2
    const-string v0, "versionname"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagVersionName:Z

    .line 80
    :cond_3
    const-string v0, "buildnumber"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagBuildNumber:Z

    .line 84
    :cond_4
    const-string v0, "downloadurl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagDownloadUrl:Z

    .line 88
    :cond_5
    const-string v0, "androidver"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagAndroid:Z

    .line 92
    :cond_6
    const-string v0, "oneuiver"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagOneUI:Z

    .line 96
    :cond_7
    const-string v0, "checkmd5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagMD5:Z

    .line 100
    :cond_8
    const-string v0, "filesize"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagFileSize:Z

    .line 104
    :cond_9
    const-string v0, "websiteurl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagWebsite:Z

    .line 108
    :cond_a
    const-string v0, "changelogheader"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogHeader:Z

    .line 112
    :cond_b
    const-string v0, "changelogurl"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 113
    iput-boolean v1, p0, Lcom/mesalabs/ten/update/ota/tasks/ROMXMLParser;->tagLogUrl:Z

    .line 116
    :cond_c
    return-void
.end method
