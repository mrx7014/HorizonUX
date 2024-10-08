.class public Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field public final mPaddingBottomNoButtons:I

.field public final mPaddingTopNoTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;

    .line 1390
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .line 1394
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1395
    sget-object v0, Lcom/mesalabs/ten/update/R$styleable;->RecycleListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1396
    .local v0, "var3":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 1397
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 1398
    return-void
.end method


# virtual methods
.method public setHasDecor(ZZ)V
    .locals 4
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z

    .line 1401
    if-eqz p2, :cond_0

    if-nez p1, :cond_3

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->getPaddingLeft()I

    move-result v0

    .line 1404
    .local v0, "var3":I
    if-eqz p1, :cond_1

    .line 1405
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->getPaddingTop()I

    move-result v1

    .local v1, "var4":I
    goto :goto_0

    .line 1407
    .end local v1    # "var4":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 1410
    .restart local v1    # "var4":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->getPaddingRight()I

    move-result v2

    .line 1412
    .local v2, "var5":I
    if-eqz p2, :cond_2

    .line 1413
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->getPaddingBottom()I

    move-result v3

    .local v3, "var6":I
    goto :goto_1

    .line 1415
    .end local v3    # "var6":I
    :cond_2
    iget v3, p0, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 1418
    .restart local v3    # "var6":I
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->setPadding(IIII)V

    .line 1421
    .end local v0    # "var3":I
    .end local v1    # "var4":I
    .end local v2    # "var5":I
    .end local v3    # "var6":I
    :cond_3
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 9
    .param p1, "var1"    # I

    .line 1424
    const-string v0, "hidden_mEdgeGlowBottom"

    const-string v1, "mEdgeGlowBottom"

    const-string v2, "hidden_mEdgeGlowTop"

    const-string v3, "mEdgeGlowTop"

    const/16 v4, 0x1d

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    .line 1425
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-static {p0, v5}, Lcom/mesalabs/cerberus/utils/Utils;->genericGetField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EdgeEffect;

    if-nez v5, :cond_6

    .line 1426
    invoke-virtual {p0}, Lcom/samsung/android/ui/app/SeslAlertController$RecycleListView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1427
    .local v5, "var2":Landroid/content/Context;
    new-instance v6, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v6, v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 1428
    .local v6, "var3":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    new-instance v7, Lcom/samsung/android/ui/widget/SeslEdgeEffect;

    invoke-direct {v7, v5}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 1429
    .local v7, "var4":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    invoke-virtual {v6, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 1430
    invoke-virtual {v7, p0}, Lcom/samsung/android/ui/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 1432
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {p0, v2, v6}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1433
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-static {p0, v0, v7}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1434
    .end local v5    # "var2":Landroid/content/Context;
    .end local v6    # "var3":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    .end local v7    # "var4":Lcom/samsung/android/ui/widget/SeslEdgeEffect;
    goto :goto_5

    .line 1436
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EdgeEffect;

    invoke-static {p0, v2, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1437
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    invoke-static {p0, v0, v3}, Lcom/mesalabs/cerberus/utils/Utils;->genericSetField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1440
    :cond_6
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1441
    return-void
.end method
