.class public Lcom/mesalabs/cerberus/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "f"    # F

    .line 42
    const/high16 v0, 0x3f000000    # 0.5f

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static getDIPForPX(Landroid/app/Activity;I)F
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "i"    # I

    .line 63
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static getDensity(Landroid/content/Context;)D
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 50
    .local v0, "configuration":Landroid/content/res/Configuration;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 52
    .local v2, "windowManager":Landroid/view/WindowManager;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 53
    .local v3, "display":Landroid/view/Display;
    :goto_0
    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    :cond_1
    if-nez v3, :cond_2

    .line 57
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    return-wide v4

    .line 59
    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-double v4, v4

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 70
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_0

    .line 71
    return v0

    .line 74
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 75
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "unused":Ljava/lang/Exception;
    const-string v2, "ViewUtils"

    const-string v3, "cannot get orientation"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v0
.end method

.method public static getRoundAndBgColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0402e4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 84
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static getSmallestDeviceWidthDp(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "metrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewUtils"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getStatusbarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    return v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 123
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_0

    .line 124
    return v0

    .line 127
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 128
    .local v2, "point":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 129
    iget v0, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "point":Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "unused":Ljava/lang/Exception;
    const-string v2, "ViewUtils"

    const-string v3, "cannot get window width"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 106
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 111
    .local v2, "point":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 112
    iget v0, v2, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 113
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "point":Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "unused":Ljava/lang/Exception;
    const-string v2, "ViewUtils"

    const-string v3, "cannot get window width"

    invoke-static {v2, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v0
.end method

.method public static hideStatusBarForLandscape(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orientation"    # I

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/Utils;->isTabletDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mesalabs/cerberus/utils/Utils;->isInSamsungDeXMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 139
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 140
    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/Utils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 143
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x3ff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "semAddExtensionFlags"

    invoke-static {v0, v2, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 148
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "semClearExtensionFlags"

    invoke-static {v0, v2, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMultiWindowMinSize(Landroid/content/Context;IZ)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minSizeDp"    # I
    .param p2, "isWidth"    # Z

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 163
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-eqz p2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :goto_0
    int-to-double v1, v1

    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->getDensity(Landroid/content/Context;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-gt v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRTLMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportSoftNavigationBar(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "id":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVisibleNaviBar(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static nullViewDrawable(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 204
    const-string v0, "ViewUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setOnClickListener Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    goto :goto_1

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setOnCreateContextMenuListener Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    goto :goto_2

    .line 215
    :catch_2
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setOnFocusChangeListener Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 222
    goto :goto_3

    .line 220
    :catch_3
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setOnKeyListener Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 227
    goto :goto_4

    .line 225
    :catch_4
    move-exception v2

    .line 226
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setOnLongClickListener Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 232
    goto :goto_5

    .line 230
    :catch_5
    move-exception v2

    .line 231
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setTouchDelegate Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 237
    goto :goto_6

    .line 235
    :catch_6
    move-exception v2

    .line 236
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setBackground Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 242
    goto :goto_7

    .line 240
    :catch_7
    move-exception v2

    .line 241
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setAnimation Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 247
    goto :goto_8

    .line 245
    :catch_8
    move-exception v2

    .line 246
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setContentDescription Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 252
    goto :goto_9

    .line 250
    :catch_9
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "nullViewDrawable setTag Exception"

    invoke-static {v0, v3}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 255
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 257
    :try_start_a
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 260
    goto :goto_a

    .line 258
    :catch_a
    move-exception v3

    .line 259
    .local v3, "e11":Ljava/lang/Exception;
    const-string v4, "nullViewDrawable setCallback Exception"

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v3    # "e11":Ljava/lang/Exception;
    :cond_0
    :goto_a
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 263
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 265
    .local v3, "d2":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "d2":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public static nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 184
    if-nez p0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 189
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 191
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/mesalabs/cerberus/utils/ViewUtils;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "index":I
    :cond_1
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewUtils"

    const-string v2, "nullViewDrawablesRecursive InflateException"

    invoke-static {v1, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 198
    :cond_2
    invoke-static {p0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->nullViewDrawable(Landroid/view/View;)V

    .line 200
    :goto_2
    return-void
.end method

.method public static resolvePadding(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 274
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "resolvePadding"

    invoke-static {p0, v1, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public static semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "z"    # Z

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "hidden_semGetHoverPopup"

    goto :goto_0

    :cond_0
    const-string v0, "semGetHoverPopup"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static semGetHoverPopupType(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 282
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "semGetHoverPopupType"

    invoke-static {p0, v1, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static semSetHoverPopupType(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "hidden_semSetHoverPopupType"

    goto :goto_0

    :cond_0
    const-string v0, "semSetHoverPopupType"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method public static semSetRoundedCornerColor(Landroid/view/View;II)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "roundMode"    # I
    .param p2, "color"    # I

    .line 294
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "semSetRoundedCornerColor"

    invoke-static {p0, v1, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public static semSetRoundedCorners(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "roundMode"    # I

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "semSetRoundedCorners"

    invoke-static {p0, v1, v0}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public static setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "size"    # F

    .line 298
    const v0, 0x3fa66666    # 1.3f

    invoke-static {p0, p1, p2, v0}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V

    .line 299
    return-void
.end method

.method public static setLargeTextSize(Landroid/content/Context;[Landroid/widget/TextView;F)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textViewArr"    # [Landroid/widget/TextView;
    .param p2, "size"    # F

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    .line 303
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 304
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    return-void
.end method

.method public static setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "size"    # F
    .param p3, "maxScale"    # F

    .line 313
    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 315
    .local v0, "fontScale":F
    div-float v1, p2, v0

    .line 316
    .local v1, "fixSize":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLargeTextSize fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewUtils"

    invoke-static {v3, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    cmpl-float v2, v0, p3

    if-lez v2, :cond_0

    .line 318
    move v0, p3

    .line 321
    :cond_0
    mul-float v2, v1, v0

    invoke-static {p1, v2}, Lcom/mesalabs/cerberus/utils/ViewUtils;->setTextSize(Landroid/widget/TextView;F)V

    .line 324
    .end local v0    # "fontScale":F
    .end local v1    # "fixSize":F
    :cond_1
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .line 327
    if-eqz p0, :cond_0

    .line 329
    const/4 v0, 0x0

    float-to-double v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewUtils"

    invoke-static {v2, v1}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static updateListBothSideMargin(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 338
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mesalabs/cerberus/utils/ViewUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/mesalabs/cerberus/utils/ViewUtils$1;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_0
    return-void
.end method
