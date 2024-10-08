.class public Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseAppBarActivity.java"


# instance fields
.field protected appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

.field protected mContext:Landroid/content/Context;

.field protected root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->hideStatusBarForLandscape(Landroid/app/Activity;I)V

    .line 48
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->resetAppBarHeight()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->root:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 53
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-object p0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->hideStatusBarForLandscape(Landroid/app/Activity;I)V

    .line 40
    return-void
.end method

.method protected removeViewRoundedCorners()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semSetRoundedCorners(Landroid/view/View;I)V

    .line 100
    return-void
.end method

.method public setBaseContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .line 91
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 92
    return-void
.end method

.method public setBaseContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 73
    const v0, 0x7f0c003d

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 75
    new-instance v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 76
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->getIsAppBarExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initAppBar(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f090103

    invoke-virtual {p0, v1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->root:Landroid/view/ViewGroup;

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->root:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 57
    const v0, 0x7f0c003d

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 59
    new-instance v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 60
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->getIsAppBarExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initAppBar(Z)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->root:Landroid/view/ViewGroup;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->root:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 69
    :cond_0
    return-void
.end method
