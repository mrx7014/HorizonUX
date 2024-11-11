.class Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslAbsSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    .line 721
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "var1"    # Landroid/animation/ValueAnimator;

    .line 723
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    .line 724
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/ui/widget/SeslAbsSeekBar;

    .line 725
    .local v0, "var2":Lcom/samsung/android/ui/widget/SeslAbsSeekBar;
    iget v1, v0, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslAbsSeekBar;->onSlidingRefresh(I)V

    .line 726
    return-void
.end method
