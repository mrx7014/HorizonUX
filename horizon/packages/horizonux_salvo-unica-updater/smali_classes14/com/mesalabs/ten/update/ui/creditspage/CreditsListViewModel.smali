.class public Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;
.super Ljava/lang/Object;
.source "CreditsListViewModel.java"


# instance fields
.field private mIsItem:Z

.field private mLibDescription:Ljava/lang/String;

.field private mLibIcon:Landroid/graphics/drawable/Drawable;

.field private mLibName:Ljava/lang/String;

.field private mLibWebLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mIsItem:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibIcon:Landroid/graphics/drawable/Drawable;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibDescription:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibWebLink:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "webLink"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mIsItem:Z

    .line 34
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p2, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibDescription:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibWebLink:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getIsItem()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mIsItem:Z

    return v0
.end method

.method public getLibDescription()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLibIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLibName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibWebLink()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/creditspage/CreditsListViewModel;->mLibWebLink:Ljava/lang/String;

    return-object v0
.end method
