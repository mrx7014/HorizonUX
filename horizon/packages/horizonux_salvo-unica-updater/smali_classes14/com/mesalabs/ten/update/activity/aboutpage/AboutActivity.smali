.class public Lcom/mesalabs/ten/update/activity/aboutpage/AboutActivity;
.super Lcom/mesalabs/cerberus/base/BaseAboutActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAboutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAppName()Ljava/lang/String;
    .locals 1

    .line 21
    const v0, 0x7f0f00aa

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/aboutpage/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIsAppUpdateable()Z
    .locals 1

    .line 26
    const/4 v0, 0x1

    return v0
.end method
