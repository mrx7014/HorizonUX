.class public Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;
.super Lcom/mesalabs/cerberus/base/BaseAppBarActivity;
.source "FirmwareInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 7

    .line 51
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 52
    .local v0, "rom":Lcom/mesalabs/ten/update/ui/widget/CardView;
    invoke-static {}, Lcom/mesalabs/ten/update/utils/FirmwareInfoUtils;->getROMVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 54
    const v1, 0x7f0900fe

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 55
    .local v1, "oneui":Lcom/mesalabs/ten/update/ui/widget/CardView;
    invoke-static {}, Lcom/mesalabs/ten/update/utils/FirmwareInfoUtils;->getOneUIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 57
    const v2, 0x7f0900fa

    invoke-virtual {p0, v2}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 58
    .local v2, "android":Lcom/mesalabs/ten/update/ui/widget/CardView;
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 60
    const v3, 0x7f0900fd

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 61
    .local v3, "kernel":Lcom/mesalabs/ten/update/ui/widget/CardView;
    invoke-static {}, Lcom/mesalabs/ten/update/utils/FirmwareInfoUtils;->getKernelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 63
    const v4, 0x7f0900fb

    invoke-virtual {p0, v4}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 64
    .local v4, "bn":Lcom/mesalabs/ten/update/ui/widget/CardView;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 66
    const v5, 0x7f0900ff

    invoke-virtual {p0, v5}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mesalabs/ten/update/ui/widget/CardView;

    .line 67
    .local v5, "sp":Lcom/mesalabs/ten/update/ui/widget/CardView;
    invoke-static {}, Lcom/mesalabs/ten/update/utils/FirmwareInfoUtils;->getSecurityPatchVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private setFwInfoCardSummary(Lcom/mesalabs/ten/update/ui/widget/CardView;Ljava/lang/String;)V
    .locals 0
    .param p1, "card"    # Lcom/mesalabs/ten/update/ui/widget/CardView;
    .param p2, "summary"    # Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Lcom/mesalabs/ten/update/ui/widget/CardView;->setDescText(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method protected getIsAppBarExpanded()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lcom/mesalabs/cerberus/base/BaseAppBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->setContentView(I)V

    .line 33
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    const v1, 0x7f0f0074

    invoke-virtual {p0, v1}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setTitleText(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->appBar:Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;

    new-instance v1, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity$1;-><init>(Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/mesalabs/cerberus/ui/utils/ActionBarUtils;->setHomeAsUpButton(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/mesalabs/ten/update/activity/home/FirmwareInfoActivity;->init()V

    .line 42
    return-void
.end method
