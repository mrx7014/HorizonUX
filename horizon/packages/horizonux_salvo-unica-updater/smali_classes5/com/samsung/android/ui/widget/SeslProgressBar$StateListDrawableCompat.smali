.class Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListDrawableCompat"
.end annotation


# static fields
.field public static final IS_BASE_SDK_VERSION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 2367
    const/4 v0, 0x1

    .local v0, "var0":Z
    goto :goto_0

    .line 2369
    .end local v0    # "var0":Z
    :cond_0
    const/4 v0, 0x0

    .line 2372
    .restart local v0    # "var0":Z
    :goto_0
    sput-boolean v0, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    .line 2373
    .end local v0    # "var0":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 3
    .param p0, "var0"    # Landroid/graphics/drawable/StateListDrawable;

    .line 2376
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const-string v0, "hidden_getStateCount"

    goto :goto_0

    :cond_0
    const-string v0, "getStateCount"

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    :cond_1
    return v1
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "var0"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "var1"    # I

    .line 2384
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "hidden_getStateDrawable"

    goto :goto_0

    :cond_0
    const-string v0, "getStateDrawable"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 4
    .param p0, "var0"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "var1"    # I

    .line 2388
    sget-boolean v0, Lcom/samsung/android/ui/widget/SeslProgressBar$StateListDrawableCompat;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "hidden_getStateSet"

    goto :goto_0

    :cond_0
    const-string v0, "getStateSet"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
