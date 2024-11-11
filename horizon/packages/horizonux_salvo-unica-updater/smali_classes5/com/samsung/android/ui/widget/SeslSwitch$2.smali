.class Lcom/samsung/android/ui/widget/SeslSwitch$2;
.super Ljava/lang/Object;
.source "SeslSwitch.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/widget/SeslSwitch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

.field final synthetic val$targetPosition:F


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/widget/SeslSwitch;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/widget/SeslSwitch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    iput p2, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->val$targetPosition:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 696
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    iget-object v0, v0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    if-ne v0, p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    iget v1, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->val$targetPosition:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/widget/SeslSwitch;->setThumbPosition(F)V

    .line 698
    iget-object v0, p0, Lcom/samsung/android/ui/widget/SeslSwitch$2;->this$0:Lcom/samsung/android/ui/widget/SeslSwitch;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/ui/widget/SeslSwitch;->mPositionAnimator:Lcom/samsung/android/ui/widget/SeslSwitch$ThumbAnimation;

    .line 700
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 702
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 693
    return-void
.end method
