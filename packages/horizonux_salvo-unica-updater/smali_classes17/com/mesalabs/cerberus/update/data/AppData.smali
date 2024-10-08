.class public Lcom/mesalabs/cerberus/update/data/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# instance fields
.field private mDownloadLink:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadLink()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mDownloadLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mVersion:I

    return v0
.end method

.method public setDownloadLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mDownloadLink:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mTitle:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setVersionNumber(I)V
    .locals 0
    .param p1, "input"    # I

    .line 34
    iput p1, p0, Lcom/mesalabs/cerberus/update/data/AppData;->mVersion:I

    .line 35
    return-void
.end method
