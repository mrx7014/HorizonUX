.class Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;I)V
    .locals 1
    .param p2, "var2"    # I

    .line 122
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 123
    iput p2, p1, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 125
    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 11
    .param p1, "var1"    # I

    .line 128
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    .line 129
    .local v0, "var2":F
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget v1, v1, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v8, v1

    .line 130
    .local v8, "var3":F
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 131
    .local v9, "var4":Landroid/graphics/Shader$TileMode;
    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const/4 v1, 0x0

    move-object v6, v1

    check-cast v6, [F

    move-object v1, v10

    move v2, v0

    move v3, v0

    move v4, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 132
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    return-void

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Canvas;
    .param p2, "var2"    # Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getWidth()I

    move-result v0

    .line 137
    .local v0, "var3":I
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->getHeight()I

    move-result v1

    .line 138
    .local v1, "var4":I
    div-int/lit8 v0, v0, 0x2

    .line 139
    int-to-float v2, v0

    .line 140
    .local v2, "var5":F
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    .line 141
    .local v3, "var6":F
    iget-object v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v4, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;

    iget v4, v4, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    return-void
.end method

.method protected onResize(FF)V
    .locals 1
    .param p1, "var1"    # F
    .param p2, "var2"    # F

    .line 146
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    .line 147
    float-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 148
    return-void
.end method
