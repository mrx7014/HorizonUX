.class public Lcom/mesalabs/ten/update/ui/widget/ChangelogView;
.super Landroid/widget/LinearLayout;
.source "ChangelogView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorText:Landroid/widget/TextView;

.field private mFadeInAnim:Landroid/view/animation/AlphaAnimation;

.field private mHeaderContainer:Landroid/widget/LinearLayout;

.field private mHeaderImgContainer:Landroid/widget/LinearLayout;

.field private mMainContainer:Landroid/widget/FrameLayout;

.field mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

.field private mSuperText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object p1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060084

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setBackgroundColor(I)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setOrientation(I)V

    .line 65
    new-instance v1, Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    .line 66
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 67
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getRoundAndBgColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 69
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->init()V

    .line 70
    return-void
.end method

.method private getSuperHeaderText()Landroid/text/SpannableStringBuilder;
    .locals 15

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "NEW_LINE":Ljava/lang/String;
    const-string v2, ": "

    .line 127
    .local v2, "TWO_DOTS":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 129
    .local v3, "COLORPRIMARYDARK":I
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "romVersionNumber":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "romVersionLine":Ljava/lang/String;
    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getBuildNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "buildDateNumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "dMMMMyyyy"

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/icu/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd"

    invoke-direct {v8, v9}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/icu/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 134
    :catch_0
    move-exception v7

    :goto_0
    nop

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f00ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "buildDateLine":Ljava/lang/String;
    iget-object v8, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getFileSize()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "updateSizeNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00b9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "updateSizeLine":Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 140
    .local v10, "span":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v10, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    invoke-virtual {v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    invoke-virtual {v10, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    invoke-virtual {v10, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 149
    return-object v10
.end method

.method private init()V
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->removeAllViews()V

    .line 92
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 93
    .local v0, "itemLayoutTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 94
    .local v2, "scaleDown":Landroid/animation/Animator;
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 95
    .local v1, "scaleUp":Landroid/animation/Animator;
    invoke-virtual {v0, v3, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 96
    const-wide/16 v4, 0x28a

    invoke-virtual {v0, v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 97
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 98
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v6, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 99
    new-instance v3, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v6, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 100
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 101
    const-wide/16 v4, 0x50

    invoke-virtual {v0, v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 103
    iget-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c0047

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    const v3, 0x7f090138

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSuperText:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f090105

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mMainContainer:Landroid/widget/FrameLayout;

    .line 107
    const v3, 0x7f09011e

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    .line 108
    const v3, 0x7f090122

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderImgContainer:Landroid/widget/LinearLayout;

    .line 109
    const v3, 0x7f09011a

    invoke-virtual {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mErrorText:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 112
    iget-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mMainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 113
    invoke-virtual {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setHeaderImgContainerDimen(Landroid/content/res/Configuration;)V

    .line 115
    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->initAnimationFields()V

    .line 116
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initAnimationFields()V
    .locals 3

    .line 119
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    .line 120
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 121
    return-void
.end method

.method private setHeaderImgContainerDimen(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 153
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "isLandscape":Z
    :goto_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderImgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    :goto_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 156
    iget-object v3, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/high16 v2, 0x40e00000    # 7.0f

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 157
    iget-object v2, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderImgContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSeslRoundedCorner:Lcom/samsung/android/ui/util/SeslRoundedCorner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setHeaderImgContainerDimen(Landroid/content/res/Configuration;)V

    .line 82
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "ocl"    # Landroid/view/View$OnClickListener;

    .line 86
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public start()V
    .locals 3

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setVisibility(I)V

    .line 162
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mesalabs/cerberus/utils/StateUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mesalabs/ten/update/ota/utils/PreferencesUtils$ROM;->getChangelogUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSuperText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSuperText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->getSuperHeaderText()Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSuperText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mFadeInAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 175
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mSuperText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/mesalabs/ten/update/ui/widget/ChangelogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void
.end method
