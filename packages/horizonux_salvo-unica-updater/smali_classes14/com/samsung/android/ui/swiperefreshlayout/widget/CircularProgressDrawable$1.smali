.class Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "var1x"    # Landroid/animation/ValueAnimator;

    .line 146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 147
    .local v0, "var2":F
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->updateRingColor(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v2, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->val$var1:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable$1;->this$0:Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/ui/swiperefreshlayout/widget/CircularProgressDrawable;->invalidateSelf()V

    .line 150
    return-void
.end method
