.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$2;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    .line 2132
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$2;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "var1"    # Landroid/animation/ValueAnimator;

    .line 2134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2135
    .local v0, "var2":F
    iget-object v1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable$2;->this$1:Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;

    invoke-virtual {v1, v0}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$SliderDrawable;->invalidateTrack(F)V

    .line 2136
    return-void
.end method
