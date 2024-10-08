.class public Lcom/mesalabs/cerberus/ui/widget/TabLayout;
.super Lcom/samsung/android/ui/tabs/SeslTabLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsResumed:Z

.field private mTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/ui/tabs/SeslTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mIsResumed:Z

    .line 43
    return-void
.end method

.method private addTabPaddingValue(Ljava/util/ArrayList;F)V
    .locals 16
    .param p2, "tabTextWidthSum"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 84
    .local p1, "tabTextWidthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 85
    .local v2, "tabTextPadding":F
    const/high16 v3, 0x41000000    # 8.0f

    mul-float v4, v2, v3

    .line 86
    .local v4, "tabTextPaddingSum":F
    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 88
    .local v5, "tabLayoutPadding":F
    iget-object v6, v0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 89
    .local v6, "window":Landroid/view/Window;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 90
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mesalabs/cerberus/utils/ViewUtils;->isVisibleNaviBar(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/mesalabs/cerberus/utils/Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/mesalabs/cerberus/utils/Utils;->isInSamsungDeXMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 96
    :goto_1
    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    .line 97
    .local v8, "screenWidthPixels":F
    iget-object v9, v0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mActivity:Landroid/app/Activity;

    const/16 v10, 0x1e0

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/mesalabs/cerberus/utils/ViewUtils;->isMultiWindowMinSize(Landroid/content/Context;IZ)Z

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v9, :cond_3

    .line 98
    const/high16 v9, 0x3e000000    # 0.125f

    mul-float/2addr v9, v8

    .line 99
    .local v9, "tabLayoutPaddingMax":F
    sub-float v11, v8, p2

    sub-float/2addr v11, v4

    div-float/2addr v11, v10

    .line 100
    .local v11, "tabLayoutPaddingMin":F
    cmpl-float v12, v11, v9

    if-ltz v12, :cond_2

    .line 101
    move v5, v9

    goto :goto_2

    .line 102
    :cond_2
    cmpg-float v12, v5, v11

    if-gez v12, :cond_3

    .line 103
    move v5, v11

    .line 107
    .end local v9    # "tabLayoutPaddingMax":F
    .end local v11    # "tabLayoutPaddingMin":F
    :cond_3
    :goto_2
    mul-float v9, v5, v10

    sub-float v9, v8, v9

    .line 108
    .local v9, "widthPixels":F
    add-float v11, p2, v4

    cmpg-float v11, v11, v9

    if-gez v11, :cond_7

    .line 109
    add-float v11, p2, v4

    sub-float v11, v9, v11

    div-float/2addr v11, v3

    add-float/2addr v11, v2

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 110
    .local v11, "paddingLeftRight":F
    sub-float v12, v9, p2

    mul-float/2addr v3, v11

    sub-float/2addr v12, v3

    .line 111
    .local v12, "paddingLastTab":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_6

    .line 112
    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_5

    const/4 v13, 0x3

    if-eq v3, v13, :cond_4

    goto :goto_4

    .line 115
    :cond_4
    invoke-direct {v0, v3}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float v15, v11, v10

    add-float/2addr v14, v15

    add-float/2addr v14, v12

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_5

    .line 113
    :cond_5
    :goto_4
    invoke-direct {v0, v3}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float v15, v11, v10

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setMinimumWidth(I)V

    .line 111
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 118
    .end local v3    # "i":I
    .end local v11    # "paddingLeftRight":F
    .end local v12    # "paddingLastTab":F
    :cond_6
    goto :goto_7

    .line 119
    :cond_7
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_8

    .line 120
    invoke-direct {v0, v3}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    mul-float v13, v2, v10

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setMinimumWidth(I)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 124
    .end local v3    # "i2":I
    :cond_8
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v10, v5

    float-to-int v11, v5

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v12, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->requestLayout()V

    .line 126
    return-void
.end method

.method private getTabTextWidth(Landroid/widget/TextView;)F
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 80
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private getTabView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .line 129
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 130
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 131
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTabViewGroup()Landroid/view/ViewGroup;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 138
    return-object v1

    .line 140
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    .line 142
    :cond_2
    :goto_0
    return-object v1
.end method

.method private invalidateTabLayout()V
    .locals 5

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "tabTextWidthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "tabTextWidthSum":F
    const/4 v2, 0x0

    .local v2, "tabPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabTextWidth(Landroid/widget/TextView;)F

    move-result v3

    .line 69
    .local v3, "width":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-float/2addr v1, v3

    .line 67
    .end local v3    # "width":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "tabPosition":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->addTabPaddingValue(Ljava/util/ArrayList;F)V

    .line 74
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 77
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 177
    invoke-super {p0, p1}, Lcom/samsung/android/ui/tabs/SeslTabLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->invalidateTabLayout()V

    .line 179
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 170
    iget-boolean v0, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->invalidateTabLayout()V

    .line 173
    :cond_0
    return-void
.end method

.method public setResumeStatus(Z)V
    .locals 0
    .param p1, "isResumed"    # Z

    .line 165
    iput-boolean p1, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mIsResumed:Z

    .line 166
    return-void
.end method

.method public setTabLayoutEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 149
    invoke-virtual {p0, p1}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->setEnabled(Z)V

    .line 150
    const/4 v0, 0x0

    .local v0, "tabPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 151
    invoke-direct {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 152
    .local v1, "tabView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "f":F
    goto :goto_1

    .line 157
    .end local v2    # "f":F
    :cond_0
    const v2, 0x3ecccccd    # 0.4f

    .line 159
    .restart local v2    # "f":F
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 150
    .end local v1    # "tabView":Landroid/view/ViewGroup;
    .end local v2    # "f":F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "tabPosition":I
    :cond_2
    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 46
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mActivity:Landroid/app/Activity;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mTextViews:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    .local v0, "tabPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 50
    invoke-virtual {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabAt(I)Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;

    move-result-object v1

    .line 51
    .local v1, "tab":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    invoke-direct {p0, v0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 52
    .local v2, "tabView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;->seslGetTextView()Landroid/widget/TextView;

    move-result-object v3

    .line 54
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->mTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    if-eqz v3, :cond_0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00a9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getTabCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 49
    .end local v1    # "tab":Lcom/samsung/android/ui/tabs/SeslTabLayout$Tab;
    .end local v2    # "tabView":Landroid/view/ViewGroup;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "tabPosition":I
    :cond_2
    invoke-direct {p0}, Lcom/mesalabs/cerberus/ui/widget/TabLayout;->invalidateTabLayout()V

    .line 62
    return-void
.end method
