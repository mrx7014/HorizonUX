.class public Lcom/samsung/android/ui/widget/SeslOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SeslOverScroller"


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .line 75
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/ui/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 46
    const-string v0, "SeslOverScroller"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v1, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v1}, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    move-object p2, v1

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 51
    iput-boolean p3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mFlywheel:Z

    .line 52
    new-instance v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v1, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 53
    new-instance v1, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {v1, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    .line 56
    const/4 v1, 0x1

    .line 58
    .local v1, "isSmoothScrollEnabled":Z
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.samsung.android.os.SemPerfManager"

    const-string v4, "onSmoothScrollEvent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/mesalabs/cerberus/utils/Utils;->genericInvokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "isSmoothScrollEnabled: genericInvokeMethod returned null!!!"

    invoke-static {v0, v4}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    .line 64
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_0
    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p0, v2}, Lcom/samsung/android/ui/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    .line 66
    const-string v2, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    invoke-static {v0, v2}, Lcom/mesalabs/ten/update/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 247
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 6

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 154
    .local v0, "elapsedTime":J
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    .line 155
    .local v2, "duration":I
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->abortAnimation()V

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 160
    .local v3, "q":F
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 161
    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v4, v3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 162
    nop

    .line 173
    .end local v0    # "elapsedTime":J
    .end local v2    # "duration":I
    .end local v3    # "q":F
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 135
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 197
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/ui/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    .line 198
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 205
    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    iget-boolean v3, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    iget-object v3, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v3

    .line 207
    .local v3, "oldVelocityX":F
    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v4

    .line 208
    .local v4, "oldVelocityY":F
    int-to-float v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v2

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 209
    int-to-float v5, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 210
    .end local p3    # "velocityX":I
    .local v1, "velocityX":I
    int-to-float v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    move v11, v2

    .end local p4    # "velocityY":I
    .local v2, "velocityY":I
    goto :goto_0

    .line 213
    .end local v1    # "velocityX":I
    .end local v2    # "velocityY":I
    .end local v3    # "oldVelocityX":F
    .end local v4    # "oldVelocityY":F
    .restart local p3    # "velocityX":I
    .restart local p4    # "velocityY":I
    :cond_0
    move v11, v2

    .end local p3    # "velocityX":I
    .end local p4    # "velocityY":I
    .restart local v1    # "velocityX":I
    .local v11, "velocityY":I
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mMode:I

    .line 214
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    move v6, p1

    move v7, v1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 215
    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    move v3, p2

    move v4, v11

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 216
    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I
    .param p11, "accDisabled"    # Z

    .line 219
    move-object v0, p0

    move v1, p3

    move/from16 v2, p4

    iget-boolean v3, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p11, :cond_0

    .line 220
    iget-object v3, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v3

    .line 221
    .local v3, "oldVelocityX":F
    iget-object v4, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v4

    .line 222
    .local v4, "oldVelocityY":F
    int-to-float v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    int-to-float v5, v2

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 223
    int-to-float v5, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 224
    .end local p3    # "velocityX":I
    .local v1, "velocityX":I
    int-to-float v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    move v11, v2

    .end local p4    # "velocityY":I
    .local v2, "velocityY":I
    goto :goto_0

    .line 227
    .end local v1    # "velocityX":I
    .end local v2    # "velocityY":I
    .end local v3    # "oldVelocityX":F
    .end local v4    # "oldVelocityY":F
    .restart local p3    # "velocityX":I
    .restart local p4    # "velocityY":I
    :cond_0
    move v11, v2

    .end local p3    # "velocityX":I
    .end local p4    # "velocityY":I
    .restart local v1    # "velocityX":I
    .local v11, "velocityY":I
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mMode:I

    .line 228
    iget-object v5, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    move v6, p1

    move v7, v1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 229
    iget-object v2, v0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    move v3, p2

    move v4, v11

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 230
    return-void
.end method

.method protected fling(IIIIIIIIZ)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "accDisabled"    # Z

    .line 201
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/ui/widget/SeslOverScroller;->fling(IIIIIIIIIIZ)V

    .line 202
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .line 95
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$002(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$002(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;Z)Z

    .line 96
    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$200(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$100(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$100(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$500(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$700(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$000(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$700(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/ui/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$400(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$300(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 233
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 234
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 238
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 140
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 145
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 86
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    .line 88
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/samsung/android/ui/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    move-object p1, v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    return-void
.end method

.method public setRegulationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 264
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setRegulationEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setRegulationEnabled(Z)V

    .line 266
    return-void
.end method

.method public setSmoothScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 258
    move v0, p1

    .line 259
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    .line 260
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    .line 261
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mMode:I

    .line 188
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 189
    .local v1, "spingbackX":Z
    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v2, p2, p5, p6}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result v2

    .line 190
    .local v2, "spingbackY":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 177
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/ui/widget/SeslOverScroller;->startScroll(IIIII)V

    .line 178
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mMode:I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    .line 184
    return-void
.end method

.method public timePassed()I
    .locals 6

    .line 250
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerX:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/ui/widget/SeslOverScroller;->mScrollerY:Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;->access$600(Lcom/samsung/android/ui/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
