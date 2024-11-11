.class Lcom/samsung/android/ui/widget/SeslTooltipPopup;
.super Ljava/lang/Object;
.source "SeslTooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslTooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mIsForceActionBarX:Z

.field private mIsForceBelow:Z

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private mNavigationBarHeight:I

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "var1"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceActionBarX:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceBelow:Z

    .line 45
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    iput v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mNavigationBarHeight:I

    .line 48
    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    .line 49
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAppPos:[I

    .line 50
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 53
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 54
    .local v2, "var2":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 55
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 56
    .local v0, "var3":I
    if-eqz v0, :cond_0

    .line 57
    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00b0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    .line 63
    const v4, 0x7f090151

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 64
    new-instance v4, Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup$1;-><init>(Lcom/samsung/android/ui/widget/SeslTooltipPopup;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    const-class v3, Lcom/samsung/android/ui/widget/SeslTooltipPopup;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 83
    .local v1, "var4":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x3ea

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 86
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 87
    const v3, 0x7f100372

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 88
    const v3, 0x40008

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 89
    return-void
.end method

.method private AdjustTooltipPosition(Landroid/view/View;III)I
    .locals 5
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 94
    .local v0, "var5":I
    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->checkNaviBarForLandscape()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 95
    if-ne v0, v3, :cond_1

    .line 96
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-direct {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p4

    .line 97
    .end local p3    # "var3":I
    .local v1, "var3":I
    move p3, p2

    .line 98
    .local p3, "var6":I
    if-gt p2, v1, :cond_0

    .line 99
    return p3

    .line 102
    :cond_0
    move p2, v1

    goto :goto_0

    .line 104
    .end local v1    # "var3":I
    .local p3, "var3":I
    :cond_1
    move v1, p2

    .line 105
    .local v1, "var6":I
    if-eq v0, v2, :cond_2

    .line 106
    return v1

    .line 109
    :cond_2
    if-gtz p2, :cond_4

    .line 110
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p4

    .line 111
    .end local p3    # "var3":I
    .local v2, "var3":I
    move p3, p2

    .line 112
    .end local v1    # "var6":I
    .local p3, "var6":I
    if-gt p2, v2, :cond_3

    .line 113
    add-int p3, v2, p4

    .line 116
    :cond_3
    return p3

    .line 119
    .end local v2    # "var3":I
    .restart local v1    # "var6":I
    .local p3, "var3":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int p3, v2, p4

    .line 120
    move v1, p2

    .line 121
    if-gt p2, p3, :cond_5

    .line 122
    return v1

    .line 125
    :cond_5
    move p2, p3

    move v4, v1

    move v1, p3

    move p3, v4

    goto :goto_0

    .line 128
    .end local v1    # "var6":I
    :cond_6
    if-eq v0, v3, :cond_7

    .line 129
    move v1, p2

    .line 130
    .restart local v1    # "var6":I
    if-eq v0, v2, :cond_7

    .line 131
    return v1

    .line 135
    .end local v1    # "var6":I
    :cond_7
    if-gtz p2, :cond_9

    .line 136
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 137
    .end local p3    # "var3":I
    .local v1, "var3":I
    move p3, p2

    .line 138
    .local p3, "var6":I
    if-ge p2, v1, :cond_8

    .line 139
    add-int p3, v1, p4

    .line 142
    :cond_8
    return p3

    .line 145
    .end local v1    # "var3":I
    .local p3, "var3":I
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 146
    .end local p3    # "var3":I
    .restart local v1    # "var3":I
    move p3, p2

    .line 147
    .local p3, "var6":I
    if-gt p2, v1, :cond_a

    .line 148
    return p3

    .line 151
    :cond_a
    move p2, v1

    .line 154
    :goto_0
    sub-int p3, p2, p4

    .line 155
    return p3
.end method

.method private checkNaviBarForLandscape()Z
    .locals 11

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    .line 160
    .local v0, "var1":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, "var2":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 162
    .local v2, "var3":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 163
    .local v3, "var4":Landroid/graphics/Point;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 164
    .local v4, "var9":Landroid/view/Display;
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 165
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 166
    .local v5, "var5":I
    const v6, 0x7f070243

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 167
    .local v6, "var6":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 168
    iget v8, v2, Landroid/graphics/Rect;->right:I

    .line 169
    .local v8, "var7":I
    iget v9, v3, Landroid/graphics/Point;->x:I

    .line 170
    .local v9, "var8":I
    add-int v10, v8, v6

    if-lt v10, v9, :cond_0

    .line 171
    sub-int v10, v9, v8

    invoke-direct {p0, v10}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->setNavigationBarHeight(I)V

    .line 172
    return v7

    .line 176
    .end local v8    # "var7":I
    .end local v9    # "var8":I
    :cond_0
    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    .line 177
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 178
    if-gt v5, v6, :cond_1

    .line 179
    invoke-direct {p0, v5}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->setNavigationBarHeight(I)V

    .line 180
    return v7

    .line 184
    :cond_1
    const/4 v7, 0x0

    return v7
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 22
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Z
    .param p5, "var5"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "var6"    # Z
    .param p7, "var7"    # Z

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 191
    .end local p3    # "var3":I
    .local v3, "var3":I
    const/16 v5, 0x31

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 193
    .local v5, "var8":Landroid/view/View;
    if-nez v5, :cond_0

    .line 194
    const-string v4, "SeslTooltipPopup"

    const-string v6, "Cannot find app view"

    invoke-static {v4, v6}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, p2

    move-object/from16 p3, v5

    goto/16 :goto_5

    .line 196
    :cond_0
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 197
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 198
    .local v6, "var9":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    if-gez v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_2

    .line 199
    iget-object v7, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 200
    .local v7, "var21":Landroid/content/res/Resources;
    const-string v9, "status_bar_height"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 201
    .end local p2    # "var2":I
    .local v9, "var2":I
    if-eqz v9, :cond_1

    .line 202
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_0

    .line 204
    :cond_1
    const/4 v9, 0x0

    .line 207
    :goto_0
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 208
    .local v10, "var22":Landroid/util/DisplayMetrics;
    iget-object v11, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v12, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v8, v9, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 211
    .end local v7    # "var21":Landroid/content/res/Resources;
    .end local v9    # "var2":I
    .end local v10    # "var22":Landroid/util/DisplayMetrics;
    .restart local p2    # "var2":I
    :cond_2
    move/from16 v9, p2

    .end local p2    # "var2":I
    .restart local v9    # "var2":I
    :goto_1
    new-array v7, v4, [I

    .line 212
    .local v7, "var23":[I
    invoke-virtual {v5, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 213
    new-instance v10, Landroid/graphics/Rect;

    aget v11, v7, v8

    const/4 v12, 0x1

    aget v13, v7, v12

    aget v14, v7, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    aget v15, v7, v12

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v10, v11, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v10, "var10":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 215
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iput v11, v6, Landroid/graphics/Rect;->left:I

    .line 216
    iget v11, v10, Landroid/graphics/Rect;->right:I

    iput v11, v6, Landroid/graphics/Rect;->right:I

    .line 217
    iget-object v11, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v5, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 218
    iget-object v11, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 219
    iget-object v11, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    .line 220
    .local v11, "var20":[I
    aget v9, v11, v8

    .line 221
    iget-object v7, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAppPos:[I

    .line 222
    aget v13, v7, v8

    sub-int v13, v9, v13

    aput v13, v11, v8

    .line 223
    aget v13, v11, v12

    aget v14, v7, v12

    sub-int/2addr v13, v14

    aput v13, v11, v12

    .line 224
    aget v13, v11, v8

    add-int/2addr v13, v3

    iget-object v14, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v4

    sub-int/2addr v13, v14

    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 225
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 226
    iget-object v13, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v13, v9, v9}, Landroid/view/View;->measure(II)V

    .line 227
    iget-object v13, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 228
    .local v13, "var11":I
    iget-object v14, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 229
    .local v14, "var12":I
    iget-object v15, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v4, 0x7f070222

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 230
    .end local v9    # "var2":I
    .local v4, "var2":I
    iget-object v9, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f07021f

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 231
    .local v9, "var13":I
    iget-object v11, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    .line 232
    aget v15, v11, v12

    sub-int/2addr v15, v13

    .line 233
    .local v15, "var14":I
    aget v17, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v12, v17, v18

    .line 237
    .local v12, "var15":I
    if-eqz p4, :cond_6

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v17

    if-nez v17, :cond_4

    .line 239
    move-object/from16 p3, v5

    .end local v5    # "var8":Landroid/view/View;
    .local p3, "var8":Landroid/view/View;
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    aget v5, v5, v8

    .line 240
    .local v5, "var16":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 241
    .local v17, "var17":I
    iget-object v8, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/16 v16, 0x2

    div-int/lit8 v8, v8, 0x2

    .line 242
    .local v8, "var18":I
    div-int/lit8 v19, v14, 0x2

    .line 243
    .local v19, "var19":I
    add-int v20, v5, v17

    sub-int v20, v20, v8

    sub-int v20, v20, v19

    move/from16 v21, v5

    .end local v5    # "var16":I
    .local v21, "var16":I
    sub-int v5, v20, v4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 244
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v20, v6

    .end local v6    # "var9":Landroid/graphics/Rect;
    .local v20, "var9":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    neg-int v6, v6

    const/16 v16, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, v19

    if-ge v5, v6, :cond_3

    .line 245
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v19

    add-int/2addr v5, v4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 248
    :cond_3
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {v0, v1, v5, v14, v4}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 249
    .end local v19    # "var19":I
    goto :goto_2

    .line 250
    .end local v8    # "var18":I
    .end local v17    # "var17":I
    .end local v20    # "var9":Landroid/graphics/Rect;
    .end local v21    # "var16":I
    .end local p3    # "var8":Landroid/view/View;
    .local v5, "var8":Landroid/view/View;
    .restart local v6    # "var9":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 p3, v5

    move-object/from16 v20, v6

    .end local v5    # "var8":Landroid/view/View;
    .end local v6    # "var9":Landroid/graphics/Rect;
    .restart local v20    # "var9":Landroid/graphics/Rect;
    .restart local p3    # "var8":Landroid/view/View;
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, v3

    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v6, v14, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 251
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {v0, v1, v5, v14, v4}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    :goto_2
    add-int v5, v12, v13

    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_5

    .line 255
    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 257
    :cond_5
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 260
    .end local v20    # "var9":Landroid/graphics/Rect;
    .end local p3    # "var8":Landroid/view/View;
    .restart local v5    # "var8":Landroid/view/View;
    .restart local v6    # "var9":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 p3, v5

    move-object/from16 v20, v6

    .end local v5    # "var8":Landroid/view/View;
    .end local v6    # "var9":Landroid/graphics/Rect;
    .restart local v20    # "var9":Landroid/graphics/Rect;
    .restart local p3    # "var8":Landroid/view/View;
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, v3

    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 261
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 262
    .local v5, "var16":I
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    neg-int v6, v6

    div-int/2addr v6, v8

    .line 263
    .local v6, "var18":I
    div-int/lit8 v17, v14, 0x2

    .line 264
    .restart local v17    # "var17":I
    add-int v8, v6, v17

    if-ge v5, v8, :cond_7

    .line 265
    iget-object v8, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    neg-int v8, v8

    const/16 v16, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int v8, v8, v17

    add-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 268
    :cond_7
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {v0, v1, v8, v14, v4}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 269
    if-ltz v15, :cond_8

    .line 270
    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 272
    :cond_8
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 276
    .end local v5    # "var16":I
    .end local v6    # "var18":I
    .end local v17    # "var17":I
    :goto_3
    if-eqz p6, :cond_9

    .line 277
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 280
    :cond_9
    if-eqz p7, :cond_d

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_b

    .line 282
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    .line 283
    .local v5, "var17":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 284
    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    .line 285
    .restart local v6    # "var18":I
    div-int/lit8 v8, v14, 0x2

    .line 286
    .local v8, "var16":I
    add-int v17, v5, v3

    sub-int v17, v17, v6

    sub-int v17, v17, v8

    move/from16 p2, v3

    .end local v3    # "var3":I
    .local p2, "var3":I
    sub-int v3, v17, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 287
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v5

    .end local v5    # "var17":I
    .restart local v17    # "var17":I
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    neg-int v5, v5

    const/16 v16, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v8

    if-ge v3, v5, :cond_a

    .line 288
    iget-object v3, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    add-int/2addr v3, v9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 291
    :cond_a
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {v0, v1, v3, v14, v4}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v3, p2

    goto :goto_4

    .line 293
    .end local v6    # "var18":I
    .end local v8    # "var16":I
    .end local v17    # "var17":I
    .end local p2    # "var3":I
    .restart local v3    # "var3":I
    :cond_b
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpAnchorPos:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, v3

    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/4 v8, 0x2

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    div-int/lit8 v6, v14, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 294
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {v0, v1, v5, v14, v4}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 297
    :goto_4
    add-int v5, v13, v12

    iget-object v6, v0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_c

    .line 298
    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 300
    :cond_c
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 305
    .end local v7    # "var23":[I
    .end local v9    # "var13":I
    .end local v10    # "var10":Landroid/graphics/Rect;
    .end local v11    # "var20":[I
    .end local v12    # "var15":I
    .end local v13    # "var11":I
    .end local v14    # "var12":I
    .end local v15    # "var14":I
    .end local v20    # "var9":Landroid/graphics/Rect;
    :cond_d
    :goto_5
    return-void
.end method

.method public static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "var0"    # Landroid/view/View;

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "var1":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 310
    .local v1, "var2":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 311
    return-object v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "var3":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 314
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 315
    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 313
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 319
    .end local v2    # "var3":Landroid/content/Context;
    :cond_2
    return-object v0
.end method

.method private getNavigationBarHeight()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mNavigationBarHeight:I

    return v0
.end method

.method private setNavigationBarHeight(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 328
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mNavigationBarHeight:I

    .line 329
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceBelow:Z

    .line 333
    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceActionBarX:Z

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 337
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    .local v0, "var1":Z
    goto :goto_0

    .line 344
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .line 347
    .restart local v0    # "var1":Z
    :goto_0
    return v0
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 9
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Z
    .param p5, "var5"    # Ljava/lang/CharSequence;

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v6, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    return-void
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V
    .locals 12
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Z
    .param p5, "var5"    # Ljava/lang/CharSequence;
    .param p6, "var6"    # Z
    .param p7, "var7"    # Z

    .line 361
    move-object v8, p0

    move/from16 v9, p6

    iput-boolean v9, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceBelow:Z

    .line 362
    move/from16 v10, p7

    iput-boolean v10, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceActionBarX:Z

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 367
    :cond_0
    iget-object v0, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v11, p5

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v5, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceBelow:Z

    iget-boolean v7, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mIsForceActionBarX:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    .line 369
    iget-object v0, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, v8, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void
.end method

.method public showActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->hide()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 379
    .local v0, "var5":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 380
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 381
    if-nez p3, :cond_1

    .line 382
    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 384
    :cond_1
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    return-void
.end method

.method public updateContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .line 391
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslTooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method
