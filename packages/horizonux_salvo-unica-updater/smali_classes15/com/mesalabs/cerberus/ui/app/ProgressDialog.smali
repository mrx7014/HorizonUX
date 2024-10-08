.class public Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
.super Lcom/samsung/android/ui/app/SeslAlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Landroid/icu/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    .line 51
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->initFormats()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    .line 57
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->initFormats()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Lcom/samsung/android/ui/widget/SeslProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 21
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 21
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 21
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/icu/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 21
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressPercentFormat:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 21
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .line 61
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/icu/text/NumberFormat;->getPercentInstance()Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressPercentFormat:Landroid/icu/text/NumberFormat;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 64
    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .line 324
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .line 71
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 79
    new-instance v0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "dialog":Lcom/mesalabs/cerberus/ui/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, p2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0, p3}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 83
    invoke-virtual {v0, p4}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    invoke-virtual {v0, p5}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    invoke-virtual {v0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->show()V

    .line 86
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v0

    return v0

    .line 215
    :cond_0
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 201
    :cond_0
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 208
    :cond_0
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 232
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->incrementProgressBy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_1

    .line 240
    :cond_0
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementBy:I

    .line 242
    :goto_1
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 245
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->incrementSecondaryProgressBy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_1

    .line 253
    :cond_0
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementSecondaryBy:I

    .line 255
    :goto_1
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 91
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/mesalabs/ten/update/R$styleable;->SeslAlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x7f04002b

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    const v4, 0x7f090190

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 94
    new-instance v2, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;-><init>(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)V

    iput-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 118
    const/16 v2, 0xc

    const v5, 0x7f0c008f

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/widget/SeslProgressBar;

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 120
    const v3, 0x7f090193

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f090194

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 123
    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 124
    :cond_0
    const/16 v2, 0x12

    const v5, 0x7f0c00a4

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/ui/widget/SeslProgressBar;

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    .line 126
    const v3, 0x7f090151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 129
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_1

    .line 131
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setMax(I)V

    .line 133
    :cond_1
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_2

    .line 134
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setProgress(I)V

    .line 136
    :cond_2
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_3

    .line 137
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 139
    :cond_3
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_4

    .line 140
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->incrementProgressBy(I)V

    .line 142
    :cond_4
    iget v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_5

    .line 143
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 146
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_6
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 149
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_7
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 152
    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    :cond_8
    iget-boolean v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    .line 156
    invoke-super {p0, p1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->onStart()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mHasStarted:Z

    .line 163
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/samsung/android/ui/app/SeslAlertDialog;->onStop()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mHasStarted:Z

    .line 169
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .line 278
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 285
    :cond_0
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIndeterminate:Z

    .line 287
    :goto_1
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 219
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_1

    .line 227
    :cond_0
    iput p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMax:I

    .line 229
    :goto_1
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 298
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_1

    .line 299
    iget v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-super {p0, p1}, Lcom/samsung/android/ui/app/SeslAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 307
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .line 172
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_1

    .line 180
    :cond_0
    iput p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressVal:I

    .line 182
    :goto_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    :goto_1
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    .line 316
    return-void
.end method

.method public setProgressPercentFormat(Landroid/icu/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    .line 319
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressPercentFormat:Landroid/icu/text/NumberFormat;

    .line 320
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    .line 321
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 310
    iput p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgressStyle:I

    .line 311
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .line 185
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mProgress:Lcom/samsung/android/ui/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onProgressChanged()V

    goto :goto_1

    .line 193
    :cond_0
    iput p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->mSecondaryProgressVal:I

    .line 195
    :goto_1
    return-void
.end method
