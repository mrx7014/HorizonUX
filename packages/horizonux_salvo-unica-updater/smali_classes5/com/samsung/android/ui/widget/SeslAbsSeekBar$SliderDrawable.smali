.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SeslAbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;
    }
.end annotation


# instance fields
.field public final ANIMATION_DURATION:I

.field public mAlpha:I

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public mIsStateChanged:Z

.field public mIsVertical:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPressedAnimator:Landroid/animation/ValueAnimator;

.field public mRadius:F

.field public mReleasedAnimator:Landroid/animation/ValueAnimator;

.field public final mSliderMaxWidth:F

.field public final mSliderMinWidth:F

.field public final mState:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;)V
    .locals 6
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # Landroid/content/res/ColorStateList;

    .line 2046
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    .line 2047
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V
    .locals 1
    .param p2, "var2"    # F
    .param p3, "var3"    # F
    .param p4, "var4"    # Landroid/content/res/ColorStateList;
    .param p5, "var5"    # Z

    .line 2049
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2050
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2051
    const/16 v0, 0xfa

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->ANIMATION_DURATION:I

    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 2053
    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    .line 2054
    new-instance v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    invoke-direct {v0, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;)V

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mState:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    .line 2055
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2056
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2057
    iput-object p4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2058
    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 2059
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2060
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2061
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 2062
    iput p3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2063
    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 2064
    iput-boolean p5, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    .line 2065
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->initAnimator()V

    .line 2066
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 2069
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2070
    .local v1, "var2":I
    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2071
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2074
    iget-boolean v2, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mIsVertical:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    .line 2075
    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 2076
    .local v2, "var3":F
    iget v10, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 2077
    .local v10, "var4":F
    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v4, v3

    sub-float v7, v2, v10

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v4, v3

    iget-object v9, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2079
    .end local v2    # "var3":F
    .end local v10    # "var4":F
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v2

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v10, v2

    .line 2080
    .restart local v10    # "var4":F
    iget v2, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 2081
    .restart local v2    # "var3":F
    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v4, v3

    sub-float v13, v10, v2

    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v4}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v14, v4, v3

    iget v15, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    iget-object v3, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2084
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2085
    iget-object v3, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2086
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 2089
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mState:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$SliderState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 2093
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 2097
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 2102
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2103
    .local v0, "var1":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2104
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2105
    .local v1, "var2":I
    if-nez v1, :cond_0

    .line 2106
    const/4 v2, -0x2

    return v2

    .line 2109
    :cond_0
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 2110
    const/4 v2, -0x1

    return v2

    .line 2114
    .end local v1    # "var2":I
    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method public final initAnimator()V
    .locals 9

    .line 2118
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 2119
    .local v0, "var1":F
    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2120
    .local v1, "var2":F
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 2121
    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2122
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2123
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$1;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2129
    new-array v2, v2, [F

    aput v1, v2, v4

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 2130
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2131
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2132
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$2;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2138
    return-void
.end method

.method public invalidateTrack(F)V
    .locals 0
    .param p1, "var1"    # F

    .line 2141
    invoke-virtual {p0, p1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->setStrokeWidth(F)V

    .line 2142
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2143
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 2146
    const/4 v0, 0x1

    return v0
.end method

.method public final modulateAlpha(II)I
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2150
    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    mul-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public onStateChange([I)Z
    .locals 9
    .param p1, "var1"    # [I

    .line 2154
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2155
    .local v0, "var2":Z
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2156
    .local v1, "var3":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    .line 2157
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 2158
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2159
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2162
    :cond_0
    array-length v2, p1

    .line 2163
    .local v2, "var4":I
    const/4 v3, 0x0

    .line 2164
    .local v3, "var5":Z
    const/4 v4, 0x0

    .line 2165
    .local v4, "var6":B
    move v5, v4

    .line 2166
    .local v5, "var7":B
    move v6, v4

    .line 2168
    .local v6, "var8":B
    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2169
    aget v7, p1, v1

    .line 2170
    .local v7, "var9":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    .line 2171
    const/4 v4, 0x1

    goto :goto_1

    .line 2173
    :cond_1
    move v4, v6

    .line 2174
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 2175
    const/4 v5, 0x1

    .line 2176
    move v4, v6

    .line 2180
    :cond_2
    :goto_1
    nop

    .end local v7    # "var9":I
    add-int/lit8 v1, v1, 0x1

    .line 2168
    move v6, v4

    goto :goto_0

    .line 2183
    :cond_3
    move v7, v3

    .line 2184
    .local v7, "var10":Z
    if-eqz v6, :cond_4

    .line 2185
    move v7, v3

    .line 2186
    if-eqz v5, :cond_4

    .line 2187
    const/4 v7, 0x1

    .line 2191
    :cond_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->startSliderAnimation(Z)V

    .line 2192
    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 2196
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mAlpha:I

    .line 2197
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2198
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/ColorFilter;

    .line 2201
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2202
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2203
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "var1"    # F

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2207
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mRadius:F

    .line 2208
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 2211
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2212
    if-eqz p1, :cond_0

    .line 2213
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2214
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mColor:I

    .line 2215
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2216
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2219
    :cond_0
    return-void
.end method

.method public final startPressedAnimation()V
    .locals 4

    .line 2222
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2223
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2228
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2230
    :cond_1
    return-void
.end method

.method public final startReleasedAnimation()V
    .locals 4

    .line 2233
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2234
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2239
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2241
    :cond_1
    return-void
.end method

.method public final startSliderAnimation(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 2244
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    .line 2245
    if-eqz p1, :cond_0

    .line 2246
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->startPressedAnimation()V

    goto :goto_0

    .line 2248
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->startReleasedAnimation()V

    .line 2251
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 2254
    :cond_1
    return-void
.end method
