.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SeslAbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbDrawable"
.end annotation


# instance fields
.field public final PRESSED_DURATION:I

.field public final RELEASED_DURATION:I

.field public mAlpha:I

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public mIsStateChanged:Z

.field public mIsVertical:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRadius:I

.field public mRadiusForAni:I

.field public mThumbPressed:Landroid/animation/ValueAnimator;

.field public mThumbReleased:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;ILandroid/content/res/ColorStateList;Z)V
    .locals 1
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/content/res/ColorStateList;
    .param p4, "var4"    # Z

    .line 2284
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2271
    const/16 p1, 0x64

    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->PRESSED_DURATION:I

    .line 2272
    const/16 p1, 0x12c

    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->RELEASED_DURATION:I

    .line 2273
    const/16 p1, 0xff

    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    .line 2276
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    .line 2277
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    .line 2278
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2285
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    .line 2286
    iput p2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    .line 2287
    iput-object p3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2288
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    .line 2289
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2290
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2291
    iput-boolean p4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    .line 2292
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->initAnimation()V

    .line 2293
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "var1"    # Landroid/graphics/Canvas;

    .line 2296
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 2297
    .local v0, "var2":I
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2299
    iget-boolean v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    iget v1, v1, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v3}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2302
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    iget v2, v2, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2305
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2306
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2307
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 2310
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 2314
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 2319
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2320
    .local v0, "var1":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2321
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2322
    .local v1, "var2":I
    if-nez v1, :cond_0

    .line 2323
    const/4 v2, -0x2

    return v2

    .line 2326
    :cond_0
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 2327
    const/4 v2, -0x1

    return v2

    .line 2331
    .end local v1    # "var2":I
    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method public initAnimation()V
    .locals 7

    .line 2335
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    .line 2336
    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2337
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2338
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2345
    new-array v0, v0, [F

    aput v4, v0, v3

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    .line 2346
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2347
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/samsung/android/ui/view/animation/SeslAnimationUtils;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2348
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$2;-><init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2355
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 2358
    const/4 v0, 0x1

    return v0
.end method

.method public final modulateAlpha(II)I
    .locals 1
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .line 2362
    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    mul-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public onStateChange([I)Z
    .locals 9
    .param p1, "var1"    # [I

    .line 2366
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2367
    .local v0, "var2":Z
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2368
    .local v1, "var3":I
    iget v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    .line 2369
    iput v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    .line 2370
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2371
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2374
    :cond_0
    array-length v2, p1

    .line 2375
    .local v2, "var4":I
    const/4 v3, 0x0

    .line 2376
    .local v3, "var5":Z
    const/4 v4, 0x0

    .line 2377
    .local v4, "var6":B
    move v5, v4

    .line 2378
    .local v5, "var7":B
    move v6, v4

    .line 2380
    .local v6, "var8":B
    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2381
    aget v7, p1, v1

    .line 2382
    .local v7, "var9":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    .line 2383
    const/4 v4, 0x1

    goto :goto_1

    .line 2385
    :cond_1
    move v4, v6

    .line 2386
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 2387
    const/4 v5, 0x1

    .line 2388
    move v4, v6

    .line 2392
    :cond_2
    :goto_1
    nop

    .end local v7    # "var9":I
    add-int/lit8 v1, v1, 0x1

    .line 2380
    move v6, v4

    goto :goto_0

    .line 2395
    :cond_3
    move v7, v3

    .line 2396
    .local v7, "var10":Z
    if-eqz v6, :cond_4

    .line 2397
    move v7, v3

    .line 2398
    if-eqz v5, :cond_4

    .line 2399
    const/4 v7, 0x1

    .line 2403
    :cond_4
    invoke-virtual {p0, v7}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->startThumbAnimation(Z)V

    .line 2404
    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 2408
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mAlpha:I

    .line 2409
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2410
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "var1"    # Landroid/graphics/ColorFilter;

    .line 2413
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2414
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2415
    return-void
.end method

.method public final setRadius(I)V
    .locals 0
    .param p1, "var1"    # I

    .line 2418
    iput p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    .line 2419
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/ColorStateList;

    .line 2422
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2423
    if-eqz p1, :cond_0

    .line 2424
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2425
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mColor:I

    .line 2426
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2427
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2430
    :cond_0
    return-void
.end method

.method public final startPressedAnimation()V
    .locals 1

    .line 2433
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2434
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2440
    :cond_1
    return-void
.end method

.method public final startReleasedAnimation()V
    .locals 1

    .line 2443
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2450
    :cond_1
    return-void
.end method

.method public final startThumbAnimation(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .line 2453
    iget-boolean v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    .line 2454
    if-eqz p1, :cond_0

    .line 2455
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->startPressedAnimation()V

    goto :goto_0

    .line 2457
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->startReleasedAnimation()V

    .line 2460
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    .line 2463
    :cond_1
    return-void
.end method
