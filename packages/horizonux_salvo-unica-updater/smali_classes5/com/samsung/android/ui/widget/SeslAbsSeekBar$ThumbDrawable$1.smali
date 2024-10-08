.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    .line 2338
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "var1"    # Landroid/animation/ValueAnimator;

    .line 2340
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2341
    .local v0, "var2":F
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->setRadius(I)V

    .line 2342
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable$1;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$ThumbDrawable;->invalidateSelf()V

    .line 2343
    return-void
.end method
