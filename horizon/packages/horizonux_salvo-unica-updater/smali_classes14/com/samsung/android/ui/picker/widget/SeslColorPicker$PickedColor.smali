.class Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/picker/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickedColor"
.end annotation


# instance fields
.field private mAlpha:I

.field private mColor:Ljava/lang/Integer;

.field private mHsv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 488
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 491
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    return v0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getV()F
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 506
    iput p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 507
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 508
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 512
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 513
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 514
    return-void
.end method

.method public setHS(FF)V
    .locals 3
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 517
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 518
    .local v0, "var3":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 519
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 520
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 521
    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 522
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "var1"    # F

    .line 525
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 526
    .local v0, "var2":[F
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 527
    iget v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 528
    return-void
.end method
