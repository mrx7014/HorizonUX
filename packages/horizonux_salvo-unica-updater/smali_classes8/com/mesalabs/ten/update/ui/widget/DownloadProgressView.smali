.class public Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;
.super Landroid/widget/FrameLayout;
.source "DownloadProgressView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescTextView:Landroid/widget/TextView;

.field private mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

.field private mProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgress:I

    .line 38
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->removeAllViews()V

    .line 45
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/tajchert/waitingdots/DotsTextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    .line 49
    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    const v0, 0x7f090133

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setProgress(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgress:I

    return v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public setCheckingMD5Status()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public setDownloadCompleteStatus()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0f006d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->hideAndStop()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public setPausedStatus(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .line 69
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v1, 0x7f0f006f

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0070

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    if-eqz p1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->hideAndStop()V

    goto :goto_2

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->isHide()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->showAndPlay()V

    .line 76
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_4

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_3

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->setTimeLeftText(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 95
    iput p1, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgress:I

    .line 96
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->isHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDotsTextView:Lpl/tajchert/waitingdots/DotsTextView;

    invoke-virtual {v0}, Lpl/tajchert/waitingdots/DotsTextView;->showAndPlay()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 99
    return-void
.end method

.method public setTimeLeftText(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0072

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    return-void
.end method

.method public setWaitingForNetworkStatus(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .line 81
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mDescTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v1, 0x7f0f0073

    goto :goto_1

    :cond_1
    const v1, 0x7f0f0070

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/DownloadProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 84
    return-void
.end method
