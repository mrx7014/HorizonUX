.class public Lcom/mesalabs/cerberus/base/BaseToolbarActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseToolbarActivity.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected root:Landroid/view/ViewGroup;

.field protected toolBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->hideStatusBarForLandscape(Landroid/app/Activity;I)V

    .line 48
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->root:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-object p0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->getResources()Landroid/content/res/Resources;

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

    .line 93
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->semSetRoundedCorners(Landroid/view/View;I)V

    .line 94
    return-void
.end method

.method public setBaseContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 90
    return-void
.end method

.method public setBaseContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 71
    const v0, 0x7f0c003f

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 73
    new-instance v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->toolBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 74
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initToolBar()V

    .line 76
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "layout":Landroid/view/View;
    const v1, 0x7f090103

    invoke-virtual {p0, v1}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->root:Landroid/view/ViewGroup;

    .line 78
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->root:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 55
    const v0, 0x7f0c003f

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 57
    new-instance v0, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->toolBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    .line 58
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->initToolBar()V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const v0, 0x7f090103

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->root:Landroid/view/ViewGroup;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/mesalabs/cerberus/base/BaseToolbarActivity;->root:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 67
    :cond_0
    return-void
.end method
